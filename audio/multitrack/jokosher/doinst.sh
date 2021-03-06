# We'll assume that a desktop file also indicates an icon
# But you should edit this as needed.

 if [ -x /usr/bin/update-desktop-database ]; then
   /usr/bin/update-desktop-database -q usr/share/applications >/dev/null 2>&1
 fi

 if [ -e usr/share/icons/hicolor/icon-theme.cache ]; then
   if [ -x /usr/bin/gtk-update-icon-cache ]; then
     /usr/bin/gtk-update-icon-cache usr/share/icons/hicolor >/dev/null 2>&1
   fi
 fi

# Looks like a mimetype file.

 if [ -x /usr/bin/update-mime-database ]; then
   /usr/bin/update-mime-database usr/share/mime >/dev/null 2>&1
 fi

 if [ -x /sbin/setcap ]; then
     /sbin/setcap cap_ipc_lock,cap_sys_nice=ep usr/bin/jokosher
 fi

