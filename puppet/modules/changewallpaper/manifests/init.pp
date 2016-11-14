class changewallpaper {
        file { "/home/master/Pictures/ESO_NASA_3440x1440.jpg":
                source => "/etc/puppet/modules/changewallpaper/ESO_NASA_3440x1440.jpg",
        }

	file { "/home/master/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml":
		content => template("changewallpaper/xfce4-desktop.xml"),
	}

#	exec { "setbg":
#		command => "/usr/bin/xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/image-path --set /home/master/Pictures/ESO_NASA_3440x1440.jpg",
#		command => '/usr/bin/xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image --set /usr/share/xfce4/backdrops/ESO_NASA_3440x1440.jpg',
#		logoutput => true,
#	}
}

