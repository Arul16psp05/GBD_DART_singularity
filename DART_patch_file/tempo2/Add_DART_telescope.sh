observatory_dat=$1

sed -e '/# New telescopes/{e cat observatories_patch.dat
}' $observatory_dat
