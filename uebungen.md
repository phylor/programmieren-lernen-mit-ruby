# Übungen

## 01 Autorechner

Erstelle einen Rechner, der die CO2-Emissionen einer Autofahrt berechnet.

Eingabewerte:
- Distanz (km)
- Treibstoffart (Benzin, Diesel)
- Verbrauch des Autos pro 100km

Ausgabe:
- CO2-Emissionen in kg

Formel:

```
km * e_treibstoff * verbrauch / 100
```

- `km`: Distanz in km
- `e_treibstoff`: Emissionsfaktor des Treibstoffes (Benzin: `3.92`, Diesel: `4.79`)
- `verbrauch`: Verbrauch des Treibstoffes pro 100km (z.B. 8l)

## 02 Autorechner | per CSV laden

Erstelle einen Rechner, der die Eingabewerte aus einer CSV lädt und daraus die CO2-Emissionen einer Autofahrt berechnet.

Beispielzeile des CSV (Start, Ende, Distanz in km, Treibstoffart, Verbrauch pro 100km):

```
Zuerich,Muenchen,312,Benzin,7
```
