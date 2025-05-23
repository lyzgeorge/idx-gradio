{ pkgs, ... }: {
  channel = "stable-24.05";

  packages = [
    pkgs.python3
  ];
  
  idx = {
    extensions = [ "ms-python.python"  "ms-python.debugpy"];

    workspace = {
      onCreate = {
        install = "python -m venv .venv && source .venv/bin/activate && pip install -r requirements.txt";
        default.openFiles = [ "README.md" "app.py" ];
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
