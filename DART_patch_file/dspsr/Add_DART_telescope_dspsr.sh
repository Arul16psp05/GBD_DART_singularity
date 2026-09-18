DSPSR_SigProcObservation_C_file=$1

sed -i -e '$!N;/    default:\n      return "unknown";/{{r SigProcObservation_C_patch_1.C' -e 'x;d;};h}' SigProcObservation.C

sed -i -e '/    else return 0;/{e cat SigProcObservation_C_patch_2.C
}' SigProcObservation.C 

sed -i -e '$!N;/    case 0:\n      return "FAKE";/{{r SigProcObservation_C_patch_3.C' -e 'x;d;};h}' SigProcObservation.C

sed -i -e '/  if(get_machine().compare/r SigProcObservation_C_patch_4.C' SigProcObservation.C
