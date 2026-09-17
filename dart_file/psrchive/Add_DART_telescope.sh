PSRCIVE_Tel_C_file=$1
PSRCIVE_Tel_h_file=$2

sed -i '/        default:/{e cat Telescopes_C_patch_1.C 
}' $PSRCIVE_Tel_C_file

sed -i '/void Pulsar::Telescopes::GBT/{e cat Telescopes_C_patch_2.C 
}' $PSRCIVE_Tel_C_file

sed -i '/void MWA/r Telescopes_h_patch.h' $PSRCIVE_Tel_h_file
