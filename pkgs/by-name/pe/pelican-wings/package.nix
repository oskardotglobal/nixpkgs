{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:
buildGoModule {
  pname = "wings";
  version = "1.0.0-beta24";

  src = fetchFromGitHub {
    owner = "pelican-dev";
    repo = "wings";
    rev = "v1.0.0-beta24";
    sha256 = "sha256-MveNLXINvxAjJOG9nvXgfSxnEUkHI0Bnqxmgg/0Qu6Q=";
  };

  vendorHash = "sha256-juiJGX0wax1iIAODAgBUNLlfFg4kd14bB6IeEqohs8U=";

  env.CGO_ENABLED = "0";

  ldflags = [
    "-s"
    "-w"
    "-X github.com/pelican-dev/wings/system.Version=1.0.0-beta24"
  ];

  meta = {
    mainProgram = "wings";
    maintainers = [ lib.maintainers.oskardotglobal ];
    homepage = "https://github.com/pelican-dev/wings";
    description = "Pelican's server control plane";
    license = lib.licenses.mit;
  };
}
