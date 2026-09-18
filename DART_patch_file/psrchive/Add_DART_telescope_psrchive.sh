Tel_C_file=$1
Tel_h_file=$2
itoa_C_file=$3

sed -i '/        default:/{e cat Telescopes_C_patch_1.C 
}' $Tel_C_file

sed -i '/void Pulsar::Telescopes::GBT/{e cat Telescopes_C_patch_2.C 
}' $Tel_C_file

sed -i '/void MWA/r Telescopes_h_patch.h' $Tel_h_file

sed -i '/  return 1;/{e cat itoa_C_patch.C
}' $itoa_C_file
