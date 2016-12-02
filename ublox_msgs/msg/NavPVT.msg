# NAV-PVT (0x01 0x07)
# Navigation Position Velocity Time Solution
#
# Note that during a leap second there may be more (or less) than 60 seconds in
# a minute; see the description of leap seconds for details.
# This message combines position, velocity and time solution, including accuracy figures.
#

uint8 CLASS_ID = 1
uint8 MESSAGE_ID = 2

uint32 iTOW             # GPS Millisecond Time of Week [ms]

uint16 year             # year
uint8 month             # month
uint8 day               # day of month
uint8 hour              # hour of day
uint8 min               # minute of hour
uint8 sec               # second of minute

uint8 valid             # Validity flags (Bitmask)
uint8 VALID_DATE = 1    # Valid UTC date
uint8 VALID_TIME = 2    # Valid UTC Time of Day
uint8 FULLY_RESOLVED = 4    # UTC Time of Day has been fully resolved

uint32 tAcc             # Time accuracy estimate (UTC)
int32 nano              # Fraction of second range -1e9 .. 1e9

uint8 fixType           # GNSS fix type: range 0..5
uint8 GPS_NO_FIX = 0
uint8 GPS_DEAD_RECKONING_ONLY = 1
uint8 GPS_2D_FIX = 2
uint8 GPS_3D_FIX = 3
uint8 GPS_GPS_DEAD_RECKONING_COMBINED = 4
uint8 GPS_TIME_ONLY_FIX = 5

uint8 flags             # Fix status flags
uint8 GNSS_FIX_OK = 1
uint8 DIFF_SOLUTION = 2 # Differential corrections applied
#Skipping flags for Power Save Mode State
uint8 HEADING_VALID = 32
uint8 RTK_FLOAT = 64
uint8 RTK_FIXED = 128

uint8 flags2
uint8 CONFIRM_AVAILABLE = 32
uint8 CONFIRMED_DATE = 64
uint8 CONFIRMED_TIME = 128

uint8 numSV             # number of SVs used in Nav Solution

int32 lon               # Longitude [deg/1e-7]
int32 lat               # Latitude [deg/1e-7]
int32 height            # Height above Ellipsoid [mm]
int32 hMSL              # Height above mean sea level [mm]
uint32 hAcc             # Horizontal Accuracy Estimate [mm]
uint32 vAcc             # Vertical Accuracy Estimate [mm]

int32 velN              # NED north velocity [cm/s]
int32 velE              # NED east velocity [cm/s]
int32 velD              # NED down velocity [cm/s]
int32 gSpeed           # Ground Speed (2-D) [cm/s]
int32 headMot           # Heading of motion 2-D [deg / 1e-5]
uint32 sAcc             # Speed Accuracy Estimate [cm/s]
uint32 headAcc             # Course / Heading Accuracy Estimate [deg / 1e-5]

uint16 pDOP             # Position DOP

uint8[6] reserved0      # Reserved
int32 headVeh           # Heading of vehicle (2-D)
uint8[4] reserved1      # Reserved


