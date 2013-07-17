SELECT 

CONCAT(SunHours.`morning_start_hour`, '-', SunHours.`morning_stop_hour`)
              AS  Practice_hours_sunday_morning_time_range,
CONCAT(SunHours.`afternoon_start_hour`, '-', SunHours.`afternoon_stop_hour`)
              AS  Practice_hours_sunday_afternoon_time_range,
CONCAT(SunHours.`evening_start_hour`, '-', SunHours.`evening_stop_hour`)
              AS  Practice_hours_sunday_evening_time_range,

CONCAT(MonHours.`morning_start_hour`, '-', MonHours.`morning_stop_hour`)
              AS  Practice_hours_monday_morning_time_range,
CONCAT(MonHours.`afternoon_start_hour`, '-', MonHours.`afternoon_stop_hour`)
              AS  Practice_hours_monday_afternoon_time_range,
CONCAT(MonHours.`evening_start_hour`, '-', MonHours.`evening_stop_hour`)
              AS  Practice_hours_monday_evening_time_range,

CONCAT(TueHours.`morning_start_hour`, '-', TueHours.`morning_stop_hour`)
              AS  Practice_hours_tueday_morning_time_range,
CONCAT(TueHours.`afternoon_start_hour`, '-', TueHours.`afternoon_stop_hour`)
              AS  Practice_hours_tueday_afternoon_time_range,
CONCAT(TueHours.`evening_start_hour`, '-', TueHours.`evening_stop_hour`)
              AS  Practice_hours_tueday_evening_time_range,

CONCAT(WedHours.`morning_start_hour`, '-', WedHours.`morning_stop_hour`)
              AS  Practice_hours_wedday_morning_time_range,
CONCAT(WedHours.`afternoon_start_hour`, '-', WedHours.`afternoon_stop_hour`)
              AS  Practice_hours_wedday_afternoon_time_range,
CONCAT(WedHours.`evening_start_hour`, '-', WedHours.`evening_stop_hour`)
              AS  Practice_hours_wedday_evening_time_range,

CONCAT(ThuHours.`morning_start_hour`, '-', ThuHours.`morning_stop_hour`)
              AS  Practice_hours_thuday_morning_time_range,
CONCAT(ThuHours.`afternoon_start_hour`, '-', ThuHours.`afternoon_stop_hour`)
              AS  Practice_hours_thuday_afternoon_time_range,
CONCAT(ThuHours.`evening_start_hour`, '-', ThuHours.`evening_stop_hour`)
              AS  Practice_hours_thuday_evening_time_range,

CONCAT(FriHours.`morning_start_hour`, '-', FriHours.`morning_stop_hour`)
              AS  Practice_hours_friday_morning_time_range,
CONCAT(FriHours.`afternoon_start_hour`, '-', FriHours.`afternoon_stop_hour`)
              AS  Practice_hours_friday_afternoon_time_range,
CONCAT(FriHours.`evening_start_hour`, '-', FriHours.`evening_stop_hour`)
              AS  Practice_hours_friday_evening_time_range,

CONCAT(SatHours.`morning_start_hour`, '-', SatHours.`morning_stop_hour`)
              AS  Practice_hours_satday_morning_time_range,
CONCAT(SatHours.`afternoon_start_hour`, '-', SatHours.`afternoon_stop_hour`)
              AS  Practice_hours_satday_afternoon_time_range,
CONCAT(SatHours.`evening_start_hour`, '-', SatHours.`evening_stop_hour`)
              AS  Practice_hours_satday_evening_time_range

FROM Hoursprofiles
JOIN Hours AS SunHours ON Hoursprofiles.id = SunHours.Hoursprofile_id
JOIN Hours AS MonHours ON Hoursprofiles.id = MonHours.Hoursprofile_id
JOIN Hours AS TueHours ON Hoursprofiles.id = TueHours.Hoursprofile_id
JOIN Hours AS WedHours ON Hoursprofiles.id = WedHours.Hoursprofile_id
JOIN Hours AS ThuHours ON Hoursprofiles.id = ThuHours.Hoursprofile_id
JOIN Hours AS FriHours ON Hoursprofiles.id = FriHours.Hoursprofile_id
JOIN Hours AS SatHours ON Hoursprofiles.id = SatHours.Hoursprofile_id
JOIN Practices ON Practices.Hoursprofile_id = Hoursprofiles.id
JOIN ProviderPractices ON ProviderPractices.Practice_id = Practices.id
JOIN Providers ON ProviderPractices.Provider_id = Providers.id
WHERE
SunHours.Day_id = 1 AND
MonHours.Day_id = 2 AND
TueHours.Day_id = 3 AND
WedHours.Day_id = 4 AND
ThuHours.Day_id = 5 AND
FriHours.Day_id = 6 AND
SatHours.Day_id = 7 AND
Providers.id =  
