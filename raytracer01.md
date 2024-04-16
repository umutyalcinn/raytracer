Bearbeitet von ...

# Erläuterung zu den Ansätzen
ToDo: Füge hier eine Erklärung Deiner Ansätze ein!
TEST

## Aufgabenteil 1: Nähester Schnittpunkt
Ich verfolge der minimale Abstand in der Variable local_min_t. Für jede Objekt in der Szene überprüfe die Überschneidung und aktuelisisere local_min_t und closest_hit falls neue t weniger als local_min_t ist.

## Aufgabenteil 2: Gibt es einen Schnittpunkt in einem bestimmten Intervall?
Für jede Objekt in der Szene überprüfe ich für die Überschneidung. Falls der t von Überschneidung ist zwishen min_t und max_t, gebe ich "true" aus. Ich gebe "false" aus, falls keine Überschneidung im bestimmen Intervall gefunden ist.

## Aufgabenteil 3: Liegt ein Punkt im Schatten?

Richtung von der Lichtquelle zu der Objekt ist von der light_direction_to Funktion der Light class berechnet.
Abstand von der Lichtquelle zu der Objekt ist von der distance_to Funktion der Light class berechnet.
any_intersection Funktion ist benutzt um Überschneidung über zu prüfen.
Strahl hat Richtung -direction weil es ist nicht von der Lichtquelle, sondern der Objekt. Richtng ist umgekehrt.

## Aufgabenteil 4: Beleuchtung mit einem Spot-Licht
light_direction_to Funktion ist benutzt um die Richtung von Lichtquelle zu der Objeckt zu finden.
a . b = || a || * || b || * cosβ
Dotproduckt von Richtung der Lichtquelle und Richtung von Lichtquelle zu der Objeckt ist mit dot Funktion berechnet.
Winkel zwishen Richtung der Lichtquelle und Richtung von Lichtquelle zu der Objeckt ist acosf((a . b) / || a || * || b ||))
len Funktion ist benutzt um die Länge von Vektoren zu berechnen.
angle > m_angle bedeutet der Puntkt von dem Spot-Licht nicht beleuchtet.
Ist spectral_intensity / L.squared_length ausgegeben weil Lichtintensität quadratisch mit der Entfernung zur Lichtquelle abnimmt.

