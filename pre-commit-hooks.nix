{inputs, ...}: {
  imports = [inputs.pre-commit-hooks.flakeModule];

  perSystem.pre-commit = {
    settings.excludes = ["flake.lock"];

    settings = {
      hooks = {
        alejandra.enable = true;
        yamllint.enable = true;
      };
      settings.yamllint.relaxed = true;
    };
  };
}
