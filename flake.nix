{
  description = ''A Nim library for biological sequence data.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bioseq-main".dir   = "main";
  inputs."bioseq-main".owner = "nim-nix-pkgs";
  inputs."bioseq-main".ref   = "master";
  inputs."bioseq-main".repo  = "bioseq";
  inputs."bioseq-main".type  = "github";
  inputs."bioseq-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bioseq-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bioseq-v_0_0_2".dir   = "v_0_0_2";
  inputs."bioseq-v_0_0_2".owner = "nim-nix-pkgs";
  inputs."bioseq-v_0_0_2".ref   = "master";
  inputs."bioseq-v_0_0_2".repo  = "bioseq";
  inputs."bioseq-v_0_0_2".type  = "github";
  inputs."bioseq-v_0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bioseq-v_0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bio_seq-v_0_0_5".dir   = "v_0_0_5";
  inputs."bio_seq-v_0_0_5".owner = "nim-nix-pkgs";
  inputs."bio_seq-v_0_0_5".ref   = "master";
  inputs."bio_seq-v_0_0_5".repo  = "bio_seq";
  inputs."bio_seq-v_0_0_5".type  = "github";
  inputs."bio_seq-v_0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bio_seq-v_0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bio_seq-v_0_0_7".dir   = "v_0_0_7";
  inputs."bio_seq-v_0_0_7".owner = "nim-nix-pkgs";
  inputs."bio_seq-v_0_0_7".ref   = "master";
  inputs."bio_seq-v_0_0_7".repo  = "bio_seq";
  inputs."bio_seq-v_0_0_7".type  = "github";
  inputs."bio_seq-v_0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bio_seq-v_0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim_seq-v0_0_1".dir   = "v0_0_1";
  inputs."nim_seq-v0_0_1".owner = "nim-nix-pkgs";
  inputs."nim_seq-v0_0_1".ref   = "master";
  inputs."nim_seq-v0_0_1".repo  = "nim_seq";
  inputs."nim_seq-v0_0_1".type  = "github";
  inputs."nim_seq-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_seq-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bio_seq-v0_0_3".dir   = "v0_0_3";
  inputs."bio_seq-v0_0_3".owner = "nim-nix-pkgs";
  inputs."bio_seq-v0_0_3".ref   = "master";
  inputs."bio_seq-v0_0_3".repo  = "bio_seq";
  inputs."bio_seq-v0_0_3".type  = "github";
  inputs."bio_seq-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bio_seq-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bio_seq-v0_0_4".dir   = "v0_0_4";
  inputs."bio_seq-v0_0_4".owner = "nim-nix-pkgs";
  inputs."bio_seq-v0_0_4".ref   = "master";
  inputs."bio_seq-v0_0_4".repo  = "bio_seq";
  inputs."bio_seq-v0_0_4".type  = "github";
  inputs."bio_seq-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bio_seq-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bio_seq-v0_0_8".dir   = "v0_0_8";
  inputs."bio_seq-v0_0_8".owner = "nim-nix-pkgs";
  inputs."bio_seq-v0_0_8".ref   = "master";
  inputs."bio_seq-v0_0_8".repo  = "bio_seq";
  inputs."bio_seq-v0_0_8".type  = "github";
  inputs."bio_seq-v0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bio_seq-v0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}