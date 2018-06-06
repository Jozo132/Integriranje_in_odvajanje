
// Naključne vhodne vrednosti izmerjene hitrosti objekta
float[] hitrosti = { 0, 0, 0, 0.5, 1, 1.5, 2.5, 3.5, 5, 7, 8.5, 10, 11, 12, 12.5, 13, 13.2, 13.4, 13.5, 13.5, 13.5, 13.5, 10.5, 8.5, 5, 3, 2, 1.5, 1, 0.5, 0, 0, 0, 0};

void setup() {
  float[] pot = new float[hitrosti.length];
  float[] pospesek = new float[hitrosti.length];
  
  // integriranje (izračun poti tega objekta)
  pot[0] = 0;
  for (int i = 1; i < hitrosti.length; i++) 
    pot[i] = hitrosti[i] + pot[i-1];

  // odvajanje (izračun pospeška tega objekta)
  for (int i = 1; i < hitrosti.length; i++)
    pospesek[i] = hitrosti[i] - hitrosti[i-1];
    
  // izpis rezultatov
  for (int i = 0; i < hitrosti.length; i++)
    println("[" + i + "]      Hitrost = " + hitrosti[i] + "        Pot opravljena = " + pot[i] + "         Pospesek = " + pospesek[i]);
}


void draw() {
}