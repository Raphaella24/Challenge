//Author rowcased
const char *const SOLAR[]={"Sol","Mercury","Venus","Earth","Mars",
                           "Jupiter","Saturn","Uranus","Neptune"};

char *get_planet_name(int id) {
    return (char *)SOLAR[id];
}