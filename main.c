#include <glib.h>

int
main (int argc, char *argv[])
{
  GDateTime *dt;
  gchar *str;

  dt = g_date_time_new_from_unix_utc (1682944459);
  str = g_date_time_format (dt, "%C%y-%m-%dT%TZ");
  g_print ("Date: %s\n", str);
  g_free (str);

  return 0;
}
