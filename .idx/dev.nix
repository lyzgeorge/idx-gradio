{ pkgs, ... }: {
  channel = "stable-24.05";

  packages = [
    pkgs.python311
    pkgs.uv
  ];
  
  idx = {
    extensions = [ "ms-python.python"  "ms-python.debugpy"];

    workspace = {
      onCreate = {
        install = "uv venv .venv && source .venv/bin/activate && uv pip install -r requirements.txt gradio";
        default.openFiles = [ "README.md" "app.py" ];
      };
      onStart = {
        activate = "source .venv/bin/activate";
      };
    };

    previews = {
      enable = true;
      previews = {
        web = {
          command = [ "./devserver.sh" ];
          env = { PORT = "$PORT"; };
          manager = "web";
        };
      };
    };
  };
}
