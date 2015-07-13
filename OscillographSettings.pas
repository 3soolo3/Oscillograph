unit OscillographSettings;

interface

uses
  Windows, apiVisuals;

const
    PLUGIN_NAME              = 'Oscillograph';
    PLUGIN_AUTHOR            = 'Author: Lyuter';
    PLUGIN_SHORT_DESCRIPTION = 'DEV BUILD';
    PLUGIN_FULL_DESCRIPTION  = '';
    //
    OSCILLOGRAPH_CAPTION     = 'AIMP Oscillograph';
    //
    OSC_COLOR_DEFAULT_LINE      = $FF00ee00;
    OSC_COLOR_DEFAULT_MARK      = $3200aa00;
    OSC_COLOR_DEFAULT_BACK      = $55002000;
    //
    OSC_CELLSIZE   = 30;    //  ������ ����� � ��������
    OSC_MARKERSIZE = 6;     //  ���������� ����� ���������

type

  TOSettings = record
    AntiAliasing: Boolean;
    LineMode: Integer; // 0 - both, 1 - right, 2 - left
    ColorLine,
    ColorGrid,
    ColorBackground   : Cardinal;
  end;

  IOscillographDrawer = interface(IUnknown)
  ['{0E6815FA-BC17-47AC-95A2-2F42DE84EB3D}']
    function Initialize(Settings: TOSettings; Width, Height: Integer): HRESULT;
    function GetMaxDisplaySize(out Width, Height: Integer): HRESULT;
    procedure Click(X, Y, Button: Integer);
    procedure Draw(DC: HDC; Data: PAIMPVisualData);
    procedure UpdateSettings(NewSettings: TOSettings);
    procedure Resize(NewWidth, NewHeight: Integer);
  end;

implementation

end.
