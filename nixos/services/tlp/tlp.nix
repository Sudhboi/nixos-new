{ windowManager, ... }:

{
  services.tlp = {
    enable = (windowManager != "kde");
    settings = {
      STOP_CHARGE_THRESH_BAT0 = 80;
      STOP_CHARGE_THRESH_BAT1 = 60;
    };
  };
}
