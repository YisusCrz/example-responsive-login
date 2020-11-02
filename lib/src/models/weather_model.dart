// To parse this JSON data, do
//
//     final weather = weatherFromJson(jsonString);

import 'dart:convert';

Weather weatherFromJson(String str) => Weather.fromJson(json.decode(str));

String weatherToJson(Weather data) => json.encode(data.toJson());

class Weather {
    Weather({
        this.data,
        this.count,
    });

    List<Datum> data;
    int count;

    factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        count: json["count"],
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "count": count,
    };
}

class Datum {
    Datum({
        this.rh,
        this.pod,
        this.lon,
        this.pres,
        this.timezone,
        this.obTime,
        this.countryCode,
        this.clouds,
        this.ts,
        this.solarRad,
        this.stateCode,
        this.cityName,
        this.windSpd,
        this.windCdirFull,
        this.windCdir,
        this.slp,
        this.vis,
        this.hAngle,
        this.sunset,
        this.dni,
        this.dewpt,
        this.snow,
        this.uv,
        this.precip,
        this.windDir,
        this.sunrise,
        this.ghi,
        this.dhi,
        this.aqi,
        this.lat,
        this.weather,
        this.datetime,
        this.temp,
        this.station,
        this.elevAngle,
        this.appTemp,
    });

    int rh;
    String pod;
    double lon;
    double pres;
    String timezone;
    String obTime;
    String countryCode;
    int clouds;
    int ts;
    int solarRad;
    String stateCode;
    String cityName;
    double windSpd;
    String windCdirFull;
    String windCdir;
    double slp;
    int vis;
    int hAngle;
    String sunset;
    int dni;
    double dewpt;
    int snow;
    int uv;
    int precip;
    int windDir;
    String sunrise;
    int ghi;
    int dhi;
    int aqi;
    double lat;
    WeatherClass weather;
    String datetime;
    double temp;
    String station;
    double elevAngle;
    double appTemp;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        rh: json["rh"],
        pod: json["pod"],
        lon: json["lon"].toDouble(),
        pres: json["pres"].toDouble(),
        timezone: json["timezone"],
        obTime: json["ob_time"],
        countryCode: json["country_code"],
        clouds: json["clouds"],
        ts: json["ts"],
        solarRad: json["solar_rad"],
        stateCode: json["state_code"],
        cityName: json["city_name"],
        windSpd: json["wind_spd"].toDouble(),
        windCdirFull: json["wind_cdir_full"],
        windCdir: json["wind_cdir"],
        slp: json["slp"].toDouble(),
        vis: json["vis"],
        hAngle: json["h_angle"],
        sunset: json["sunset"],
        dni: json["dni"],
        dewpt: json["dewpt"].toDouble(),
        snow: json["snow"],
        uv: json["uv"],
        precip: json["precip"],
        windDir: json["wind_dir"],
        sunrise: json["sunrise"],
        ghi: json["ghi"],
        dhi: json["dhi"],
        aqi: json["aqi"],
        lat: json["lat"].toDouble(),
        weather: WeatherClass.fromJson(json["weather"]),
        datetime: json["datetime"],
        temp: json["temp"].toDouble(),
        station: json["station"],
        elevAngle: json["elev_angle"].toDouble(),
        appTemp: json["app_temp"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "rh": rh,
        "pod": pod,
        "lon": lon,
        "pres": pres,
        "timezone": timezone,
        "ob_time": obTime,
        "country_code": countryCode,
        "clouds": clouds,
        "ts": ts,
        "solar_rad": solarRad,
        "state_code": stateCode,
        "city_name": cityName,
        "wind_spd": windSpd,
        "wind_cdir_full": windCdirFull,
        "wind_cdir": windCdir,
        "slp": slp,
        "vis": vis,
        "h_angle": hAngle,
        "sunset": sunset,
        "dni": dni,
        "dewpt": dewpt,
        "snow": snow,
        "uv": uv,
        "precip": precip,
        "wind_dir": windDir,
        "sunrise": sunrise,
        "ghi": ghi,
        "dhi": dhi,
        "aqi": aqi,
        "lat": lat,
        "weather": weather.toJson(),
        "datetime": datetime,
        "temp": temp,
        "station": station,
        "elev_angle": elevAngle,
        "app_temp": appTemp,
    };
}

class WeatherClass {
    WeatherClass({
        this.icon,
        this.code,
        this.description,
    });

    String icon;
    int code;
    String description;

    factory WeatherClass.fromJson(Map<String, dynamic> json) => WeatherClass(
        icon: json["icon"],
        code: json["code"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "icon": icon,
        "code": code,
        "description": description,
    };
}
