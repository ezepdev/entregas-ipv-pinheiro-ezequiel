GDPC                                                                            *   D   res://.import/background.png-5e56608cefc46c5035653a095f83e7dc.stex  `n      `       QP3,� !�9��c���ZD   res://.import/background.png-db55ec47224fbca7de3496d6823058f9.stex  �      �      J�{g�I�O�qm�-@   res://.import/cannon.png-fa81fcdbbbb6e136dfe56caebadba289.stex  `$      �       �̔F-"{�'��_�@   res://.import/floor.png-b1e0c04817885226f6dbe97783291e0a.stex   �q      F       �::�-nFe|�"�q��@   res://.import/floor.png-bc19f2b688ab458014752317127027f7.stex   �'      �       �N9��l��u&0~��}<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stexP^      U      -��`�0��x�5�[@   res://.import/player.png-965fb12be218bfe81cbf4b66ef213928.stex  �+      �       �o�?��<;A�g�V���@   res://.import/player.png-b698f8df840ff62bba40a8e1f4488618.stex  �t      B       qd���<��t&�8[L   res://.import/proyectile_player.png-132abea7930406785970417e0c2cdfbf.stex   p/      �      ���I�p�F&Q\F��F2L   res://.import/proyectile_turret.png-f1f226341636bbe57dd638c8e94ffde6.stex   @4            ֌�	vH?�"�M�92@   res://.import/turret.png-54022cbf2106bc383902c76b01ff8de2.stex  09      �       �T�ϛ���2������   res://Main.gd.remap �w             �(@Er�#��K�F�[   res://Main.gdc  `      �       �eb�1�E+�Z�2   res://Main.tscn @      b      W:4Y���0�IGna�,   res://assets/textures/background.png.import �!      �      G�(�-p�b�Mc�(   res://assets/textures/cannon.png.import 0%      �      �Ũj���{4K�z��U(   res://assets/textures/floor.png.import  �(      �      �Fp��ZJ��C�-H�(   res://assets/textures/player.png.import �,      �      t/RǨ�Q���:�$3�4   res://assets/textures/proyectile_player.png.import  `1      �      8* @�x7Mu��]q�4   res://assets/textures/proyectile_turret.png.import  P6      �      w� �#����D���w�(   res://assets/textures/turret.png.import  :      �      �$�,�/C8Tov��:   res://default_env.tres  �<      �       um�`�N��<*ỳ�8,   res://entities/AbstractProjectile.gd.remap  �w      6       L�h�(��]��j鄢g(   res://entities/AbstractProjectile.gdc   p=      &      ��F��xC���M�N�!=(   res://entities/AbstractProjectile.tscn  �@      -      H��u��(�M�[,�y(   res://entities/enemies/Projectile.tscn  �A      d      ��3�Ӿ�� �j�Q(   res://entities/enemies/Turret.gd.remap  �w      2       :�����ri���[�$   res://entities/enemies/Turret.gdc   @C      \      B�	n�3�+
�����$   res://entities/enemies/Turret.tscn  �H      2      ��)Ϯ%O���`(   res://entities/player/Cannon.gd.remap   0x      1       ���/lt�F�� o    res://entities/player/Cannon.gdc�L      _      ��.^����_0#(   res://entities/player/Player.gd.remap   px      1       %���p	2I:{X���    res://entities/player/Player.gdc@P      �      ��N]A�B�o�&�lm$   res://entities/player/Player.tscn   �V      �      Zۉ]4Zo�8H����.�(   res://entities/player/Projectile.tscn   �Z      d      � e#B	~�?,�l�2�H    res://entities/world/Floor.tscn 0\            �"7z-�g�A,f�&��   res://icon.png  �x      �      G1?��z�c��vN��   res://icon.png.import   �k      �      "�Պ����$��㹌   res://project.binary��      l
      w��|̿��0�����|(   res://resources/background.png.import   �n      �      �(��ֺ�`�`��"��    res://resources/floor.png.import�q      �      &LX� �=�ʰ�,f�$   res://resources/player.png.import   �t      �      �f�f�p�o0�ie�            GDSC                   ���Ӷ���   �����϶�   �����Ķ�   �����������������������Ķ���   �����¶�   ���������Ŷ�                   	                  3YY0�  PQV�  W�  T�  PQ�  W�  T�  PQY`        [gd_scene load_steps=8 format=2]

[ext_resource path="res://entities/player/Player.tscn" type="PackedScene" id=1]
[ext_resource path="res://entities/world/Floor.tscn" type="PackedScene" id=2]
[ext_resource path="res://resources/background.png" type="Texture" id=3]
[ext_resource path="res://Main.gd" type="Script" id=4]
[ext_resource path="res://entities/enemies/Turret.tscn" type="PackedScene" id=5]
[ext_resource path="res://assets/textures/player.png" type="Texture" id=6]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 31.5, 31.5 )

[node name="Main" type="Node"]
script = ExtResource( 4 )

[node name="CanvasLayer" type="CanvasLayer" parent="."]
layer = -1

[node name="Background" type="TextureRect" parent="CanvasLayer"]
anchor_right = 1.0
anchor_bottom = 1.0
texture = ExtResource( 3 )
expand = true

[node name="Player" parent="." instance=ExtResource( 1 )]
position = Vector2( 512, 300 )
speed = 500

[node name="Camera2D" type="Camera2D" parent="Player"]
current = true

[node name="Turret" parent="." instance=ExtResource( 5 )]
position = Vector2( 243, 153 )

[node name="Floor" parent="." instance=ExtResource( 2 )]

[node name="Floor2" parent="." instance=ExtResource( 2 )]
position = Vector2( 1519, 466 )

[node name="Floor3" parent="." instance=ExtResource( 2 )]
position = Vector2( 2541, 466 )

[node name="RigidBody2D" type="RigidBody2D" parent="."]
position = Vector2( 150, 150 )

[node name="Sprite" type="Sprite" parent="RigidBody2D"]
texture = ExtResource( 6 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="RigidBody2D"]
position = Vector2( 0.5, -0.5 )
shape = SubResource( 1 )
              GDST   X          �  PNG �PNG

   IHDR     X   �v�p   sRGB ���  kIDATx���1  �0����$
�v��,  ��y   �À     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d  �1   @ƀ     d.�W�fF�5    IEND�B`�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/background.png-db55ec47224fbca7de3496d6823058f9.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/textures/background.png"
dest_files=[ "res://.import/background.png-db55ec47224fbca7de3496d6823058f9.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
            GDST"              �   PNG �PNG

   IHDR   "      >=o   sRGB ���   _IDATH��ֱ�0@�����2�K�h��9T
�p ,�w\J^G��d6�c�Ҟ$�p?  �����-g����
+H� ���
�SlI�1�m��c� ��i��2    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/cannon.png-fa81fcdbbbb6e136dfe56caebadba289.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/textures/cannon.png"
dest_files=[ "res://.import/cannon.png-fa81fcdbbbb6e136dfe56caebadba289.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        GDSTB   B           �   PNG �PNG

   IHDR   B   B   �T �   sRGB ���   �IDATx���A�  �0����§�#Q�볾wƼ�FĈ#bD��1"FĈ#bD��1"FĈ#bD��1"FĈ#bD��1"FĈ#bD��1"FĈ#bD��1"FĈ#bD��1"FĈ#bD��1"�,��<�C    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/floor.png-bc19f2b688ab458014752317127027f7.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/textures/floor.png"
dest_files=[ "res://.import/floor.png-bc19f2b688ab458014752317127027f7.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           GDST@   @           �   PNG �PNG

   IHDR   @   @   �iq�   sRGB ���   �IDATx���A�0 ð��9w0�����o��Î���� �:@k����� �:@k����� �:@k����� �:@k����� �:@k����� �:@k����� �:@k����� �:@�P� *d�    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/player.png-965fb12be218bfe81cbf4b66ef213928.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/textures/player.png"
dest_files=[ "res://.import/player.png-965fb12be218bfe81cbf4b66ef213928.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        GDST              �  PNG �PNG

   IHDR         VΎW   sRGB ���  �IDAT8���=K�P����4k�v����"XP���I���E�R���A��� :9t���RP���u�Pi�`J��i�X�/\nHx�=���
 X-ƥ������y������I�ӷw�)"��ηZ�7�	�F��0�^Ted�$;��߿���Y����*��ސ����,��"am��1GT�C&G��2p`�\�K"ջ��!��gX٣�� �
����!s;[�A fd�O�d�b��1۷D��%m`w�,	��N� �^] 4���Մ��Q	�Y��^�_�m&d���!�
$d^E�B�객^H��F<Fy���4��F$����a0k��.��9�bas������}�ΜI"t�c1`���Uq*�4)�H�д&[R�lZ����ŗ2
�6    IEND�B`�  [remap]

importer="texture"
type="StreamTexture"
path="res://.import/proyectile_player.png-132abea7930406785970417e0c2cdfbf.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/textures/proyectile_player.png"
dest_files=[ "res://.import/proyectile_player.png-132abea7930406785970417e0c2cdfbf.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       GDST              �  PNG �PNG

   IHDR         ;mG�   sRGB ���  �IDAT8���=K#Q��{�qff�"�T�B� �]ViL�?�f��Œ.V��-!6A�sl��A����*��Lf�XLFd�U�������xEŁ��(o؎�ސ�<��ؒ��G�<nK'{�A�aB�1G���j����=��!v-�m�,W|�3p$��e�j���uI����ȀW�������Uw���jdh��5J�����91P��>�S����ŷ ���k3���Q���U�!24�6�)�W:�����<͓9���<��a1Hf�,mI��+����tė)��}�=�8���]Ek�䭽�1�.0���G��	�NSN��I^�O�l3�8� ��� 2$?�r{�0�����|և�k��E<i�C	�)��V�0��8/�I��=We~�[����Z3s��    IEND�B`�            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/proyectile_turret.png-f1f226341636bbe57dd638c8e94ffde6.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/textures/proyectile_turret.png"
dest_files=[ "res://.import/proyectile_turret.png-f1f226341636bbe57dd638c8e94ffde6.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       GDST!   A           �   PNG �PNG

   IHDR   !   A   _�5   sRGB ���   eIDATh���AA ��K���xu!a�1m # ׶{������������_AAAAAAAAAAAAAA�#"�=�?�A~�Q��    IEND�B`�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/turret.png-54022cbf2106bc383902c76b01ff8de2.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/textures/turret.png"
dest_files=[ "res://.import/turret.png-54022cbf2106bc383902c76b01ff8de2.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDSC            p      �����Ӷ�   ���������Ӷ�   ���������������Ҷ���   ���������Ӷ�   ����Ҷ��   ��������ض��   �����϶�   ������������������Ŷ   ������������������Ŷ   ����������������ض��   ��������������ض   ����Ķ��   ����¶��   ���������������Ŷ���   ����׶��   �������ض���   ����������������¶��   ����������ڶ                   delete_requested                                                    	      
   #      (      )      6      ;      B      I      O      P      W      _      `      a      g      n      3Y2�  YYB�  P�  QSYY8P�  Q;�  SYY;�  V�  YY0�  PQV�  �  PQYY0�  P�	  V�  R�  V�  QV�  �
  �	  S�  T�  �  S�  W�  T�  PQ�  �  P�  QSYY0�  P�  QV�  �  �  �  �  YYY0�  PQV�  �  P�  RQY`          [gd_scene load_steps=2 format=2]

[ext_resource path="res://entities/AbstractProjectile.gd" type="Script" id=1]

[node name="Projectile" type="Sprite"]
script = ExtResource( 1 )

[node name="Timer" type="Timer" parent="."]

[connection signal="timeout" from="Timer" to="." method="_on_Timer_timeout"]
   [gd_scene load_steps=3 format=2]

[ext_resource path="res://entities/AbstractProjectile.tscn" type="PackedScene" id=1]
[ext_resource path="res://assets/textures/proyectile_turret.png" type="Texture" id=2]

[node name="Projectile" instance=ExtResource( 1 )]
texture = ExtResource( 2 )
speed = 500.0

[node name="Timer" parent="." index="0"]
wait_time = 5.0
            GDSC         &   �      �����Ӷ�   ����������Ӷ   ���������������Ӷ���   �������������������Ķ���   ���Ӷ���   �����¶�   ���ӄ�   ������������ض��   �������؄�   �����������ض���   ���������Ŷ�   ����������������¶��   ���Ӷ���   ���������Ӷ�   ���������Ӷ�   �������Ӷ���   ��������Ҷ��   ������������������Ŷ   ��������������ض   ���������Ҷ�   ������¶    ������������������������������Ҷ   �����������Ҷ���   ���������Ӷ�$   �������������������������������Ҷ���   ���϶���   ����Ķ��   ����¶��    ������������������������������Ҷ   ���ƶ���      delete_requested      _on_projectile_delete_requested                                                       !   	   (   
   .      /      0      1      2      8      <      =      C      N      V      m      x      y      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   3Y8P�  Q;�  V�  YY;�  V�  Y;�  V�  YY5;�  V�  W�	  YY0�
  P�  QV�  T�  �  �  �  YYY0�  PQV�  �  PQYY0�  PQV�  ;�  V�  �  T�  PQ�  �  T�  P�  QS�  �  T�  P�  T�  RP�  T�  �  T�  QT�  PQQ�  �  T�  PRR�  QYY0�  P�  QV�  �  T�  P�  Q�  �  T�  PQYYY0�  P�  QV�  &�  �  V�  �  �  S�  W�  T�  PQYY0�  P�  QV�  &�  �  V�  �  �  �  W�  T�  PQY`    [gd_scene load_steps=5 format=2]

[ext_resource path="res://entities/enemies/Turret.gd" type="Script" id=1]
[ext_resource path="res://assets/textures/turret.png" type="Texture" id=2]
[ext_resource path="res://entities/enemies/Projectile.tscn" type="PackedScene" id=3]

[sub_resource type="CircleShape2D" id=1]
radius = 331.665

[node name="Turret" type="Sprite"]
texture = ExtResource( 2 )
script = ExtResource( 1 )
projectile_scene = ExtResource( 3 )

[node name="FirePosition" type="Position2D" parent="."]
position = Vector2( 0, -20 )

[node name="Timer" type="Timer" parent="."]

[node name="DetectionPlayer" type="Area2D" parent="."]
collision_layer = 0
collision_mask = 2

[node name="CollisionShape2D" type="CollisionShape2D" parent="DetectionPlayer"]
shape = SubResource( 1 )

[connection signal="timeout" from="Timer" to="." method="_on_Timer_timeout"]
[connection signal="body_entered" from="DetectionPlayer" to="." method="_on_DetectionPlayer_body_entered"]
[connection signal="body_exited" from="DetectionPlayer" to="." method="_on_DetectionPlayer_body_exited"]
              GDSC            o      �����Ӷ�   ������������ض��   �������؄�   �����������ض���   ����������Ӷ   ���������������Ӷ���   �������������������Ķ���   ���Ӷ���   ���Ӷ���   ������������������Ӷ   ���������Ӷ�   �������Ӷ���   ��������Ҷ��   ������������������Ŷ   ��������������ض   ���������Ҷ�   ������¶    ������������������������������Ҷ   ���������Ӷ�   �����������Ҷ���   ���������Ӷ�      delete_requested      _on_projectile_delete_requested                                                     	      
   "      -      4      J      V      W      ^      f      m      3YY5;�  V�  W�  YY8P�  Q;�  Y;�  V�  YYYY0�  PQV�  ;�	  V�
  �  T�  PQ�  �  T�  P�	  Q�  �	  T�  P�  T�  RP�  T�  �  QT�  PQQS�  �	  T�  PRR�  QS�  Y0�  P�  QV�  �  T�  P�  QS�  �  T�  PQSY` GDSC          '   %     ������������τ�   �����ض�   �����Ӷ�   �����ض�   ����Ҷ��   ���������������   ����������������   ���������������������ⶶ   ����������   �������   �������������������Ķ���   �������϶���   ��������   �����������������������Ķ���   ��������Ķ��   ���Ӷ���   �������������Ŷ�   ������������������¶   ����¶��   ����������������Ҷ��   ��������������¶   �������������ض�   ������������������������ض��   ������¶   ���������������������Ҷ�   ���Ӷ���   ζ��   ϶��   ���������������Ŷ���   ����׶��   �������������Ӷ�   �涶   ,    �������?     �A   X     �     
      
   move_right     	   move_left                fire            jump                               *      6      C      O   	   P   
   S      \      ]      f      m      r      s      y      �      �      �      �      �      �      �      �      �      �      �      �      �      �          !     "     #     $     %     &   #  '   3Y5;�  V�  W�  Y8;�  SY8P�  Q;�  V�  �  SY8P�  Q;�  V�  �  SY8P�  Q;�  V�  �  SY8P�  Q;�  V�  �  SY8P�  Q;�	  V�  �  SYY;�
  Y;�  V�  �  T�  YY0�  P�  V�  QV�  �  T�
  �  S�  �
  �  SYY0�  PQV�  ;�  V�  �  P�  T�  P�  QQ�  P�  T�  P�  QQS�  ;�  �  �  �  �  ;�  V�  �  PQ�  �  T�  P�  Q�  �  &P�  T�  P�	  QQV�  T�  PQ�  �  �  &�  V�  �  T�  �5  P�  T�  �  �  R�  R�  Q�  (V�  �  T�  �  P�  T�  R�  R�  Q&�  P�  T�  Q�
  (�  �  �  &P�  T�  P�  QQV�  �  T�  �  YY0�  P�  QV�  �  PQS�  �  T�  �	  S�  �  P�  R�  T�  QY`        [gd_scene load_steps=7 format=2]

[ext_resource path="res://entities/player/Cannon.gd" type="Script" id=1]
[ext_resource path="res://entities/player/Player.gd" type="Script" id=2]
[ext_resource path="res://entities/player/Projectile.tscn" type="PackedScene" id=3]
[ext_resource path="res://assets/textures/cannon.png" type="Texture" id=4]
[ext_resource path="res://assets/textures/player.png" type="Texture" id=5]

[sub_resource type="CapsuleShape2D" id=1]
radius = 32.0
height = 0.0

[node name="Player" type="KinematicBody2D"]
collision_layer = 2
script = ExtResource( 2 )
speed = 299

[node name="Body" type="Sprite" parent="."]
texture = ExtResource( 5 )

[node name="Cannon" type="Sprite" parent="."]
texture = ExtResource( 4 )
script = ExtResource( 1 )
projectile_scene = ExtResource( 3 )

[node name="FirePosition" type="Position2D" parent="Cannon"]
position = Vector2( 15, 0 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )
               [gd_scene load_steps=3 format=2]

[ext_resource path="res://entities/AbstractProjectile.tscn" type="PackedScene" id=1]
[ext_resource path="res://assets/textures/proyectile_player.png" type="Texture" id=2]

[node name="Projectile" instance=ExtResource( 1 )]
texture = ExtResource( 2 )
speed = 500.0

[node name="Timer" parent="." index="0"]
wait_time = 3.0
            [gd_scene load_steps=3 format=2]

[ext_resource path="res://resources/floor.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 510.5, 133 )

[node name="Floor" type="StaticBody2D"]
position = Vector2( 496, 466 )

[node name="Land" type="Sprite" parent="."]
position = Vector2( 0, -0.250001 )
scale = Vector2( 15.4697, 4.05303 )
texture = ExtResource( 1 )
offset = Vector2( 1, 0 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 15.5, 0 )
shape = SubResource( 1 )
   GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDST   X           D   WEBPRIFF8   WEBPVP8L+   /Õ ������I���dD�3�����?��������?�g [remap]

importer="texture"
type="StreamTexture"
path="res://.import/background.png-5e56608cefc46c5035653a095f83e7dc.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://resources/background.png"
dest_files=[ "res://.import/background.png-5e56608cefc46c5035653a095f83e7dc.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  GDSTB   B            *   WEBPRIFF   WEBPVP8L   /A@ �؊������            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/floor.png-b1e0c04817885226f6dbe97783291e0a.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://resources/floor.png"
dest_files=[ "res://.import/floor.png-b1e0c04817885226f6dbe97783291e0a.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 GDST@   @            &   WEBPRIFF   WEBPVP8L   /?� �DD�              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/player.png-b698f8df840ff62bba40a8e1f4488618.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://resources/player.png"
dest_files=[ "res://.import/player.png-b698f8df840ff62bba40a8e1f4488618.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              [remap]

path="res://Main.gdc"
 [remap]

path="res://entities/AbstractProjectile.gdc"
          [remap]

path="res://entities/enemies/Turret.gdc"
              [remap]

path="res://entities/player/Cannon.gdc"
               [remap]

path="res://entities/player/Player.gdc"
               �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes�                     class      
   Projectile        language      GDScript      path   $   res://entities/AbstractProjectile.gd      base      Sprite     _global_script_class_icons$            
   Projectile            application/config/name$         entrega-4-pinheiro-ezequiel    application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png  +   gui/common/drop_mouse_on_gui_input_disabled            input/move_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      physical_scancode             unicode           echo          script         input/move_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      physical_scancode             unicode           echo          script      
   input/fire�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script      
   input/jump�              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      physical_scancode             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode             unicode           echo          script            deadzone      ?)   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres      