# -------------
#  BWRC connect
# -------------
# alias bwrcrdsl-1='ssh -XY alexfromshermanoaks@bwrcrdsl-1.eecs.berkeley.edu -C'
# alias 740-5='ssh -XY  alexfromshermanoaks@bwrcr740-5.eecs.berkeley.edu -J alexfromshermanoaks@bwrcrdsl-1.eecs.berkeley.edu -C'
# alias 720-5='ssh -XY  alexfromshermanoaks@bwrcr720-5.eecs.berkeley.edu -J alexfromshermanoaks@bwrcrdsl-1.eecs.berkeley.edu -C'
# -------------
# EDA connect
# -------------
#alias 151a='ssh eecs151-abb@eda-4.eecs.berkeley.edu -XY -C'
#alias 251b='ssh eecs251b-abk@eda-4.eecs.berkeley.edu -XY -C'
# -------------
# OCF connect
# -------------
#alias ocf='ssh -XY vlkv@vlkv.decal.ocfhosted.com'
# alias g_mount='rclone mount gdrive: /home/ke314/gdrive &'
# alias g_umount='fusermount -u /home/ke314/gdrive'

# function gdrive
#     set action $argv[1]
#     set mnt_pnt "/home/ke314/gdrive"
#     set remote_drive "gdrive:"
#
#     switch $action
#         case "mount"
#             rclone mount "$remote_drive" "$mnt_pnt" &
#         case "umount"
#             fusermount -u "$mnt_pnt"
#     end
# end

