GDPC                                                                            *   D   res://.import/background.png-5e56608cefc46c5035653a095f83e7dc.stex  �a      `       QP3,� !�9��c���ZD   res://.import/background.png-db55ec47224fbca7de3496d6823058f9.stex  �      `       QP3,� !�9��c���Z@   res://.import/cannon.png-fa81fcdbbbb6e136dfe56caebadba289.stex  @      v       l���o �~�P����@   res://.import/floor.png-b1e0c04817885226f6dbe97783291e0a.stex   @e      F       �::�-nFe|�"�q��@   res://.import/floor.png-bc19f2b688ab458014752317127027f7.stex   �      F       �::�-nFe|�"�q��<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex@Y      �      &�y���ڞu;>��.p@   res://.import/player.png-965fb12be218bfe81cbf4b66ef213928.stex  �      B       qd���<��t&�8[@   res://.import/player.png-b698f8df840ff62bba40a8e1f4488618.stex  ph      B       qd���<��t&�8[L   res://.import/proyectile_player.png-132abea7930406785970417e0c2cdfbf.stex    #      �       &X����t�^�;J�]IL   res://.import/proyectile_turret.png-f1f226341636bbe57dd638c8e94ffde6.stex    '      �       �I����zʵJ�;HmN@   res://.import/turret.png-54022cbf2106bc383902c76b01ff8de2.stex  �*      R       �Z̄ēn��c��    res://Main.gd.remap �k             �(@Er�#��K�F�[   res://Main.gdc  `      �       �eb�1�E+�Z�2   res://Main.tscn @      �      ��:(�W�u��>�1�,   res://assets/textures/background.png.import P      �      �ިza�w�Wd��	>(   res://assets/textures/cannon.png.import �      �      C�Q�Q�
�avy��S(   res://assets/textures/floor.png.import  �      �      ���_�ʁ$�aV���](   res://assets/textures/player.png.import         �      ��[Ǵ5�TC��ђ�ر4   res://assets/textures/proyectile_player.png.import   $      �      ��a�\(dq����[,4   res://assets/textures/proyectile_turret.png.import  �'      �      I~�
�p�E�O���f(   res://assets/textures/turret.png.import P+      �      �TgS���RJ~�t   res://default_env.tres  0.      �       um�`�N��<*ỳ�8,   res://entities/AbstractProjectile.gd.remap  �k      6       L�h�(��]��j鄢g(   res://entities/AbstractProjectile.gdc   �.      �      �m�5�wW�X�T�ai(   res://entities/AbstractProjectile.tscn  �2      �      ����X{z���e`(   res://entities/enemies/Projectile.tscn  �4            �S-P�o�s���5(   res://entities/enemies/Turret.gd.remap   l      2       :�����ri���[�$   res://entities/enemies/Turret.gdc   �8      o      �'<F��G��J���$   res://entities/enemies/Turret.tscn  ?      {      ^^�������SL��(   res://entities/player/Cannon.gd.remap   @l      1       ���/lt�F�� o    res://entities/player/Cannon.gdc�D      _      ��.^����_0#(   res://entities/player/Player.gd.remap   �l      1       %���p	2I:{X���    res://entities/player/Player.gdc�G      �      ��^�Y�uB)3P�/���$   res://entities/player/Player.tscn   �N      �      y���daY��KZ/ϵ��(   res://entities/player/Projectile.tscn   �R      1      r�^�[�BXz��@�    res://entities/world/Floor.tscn W      0      �ŭ5k��Z�xy�ׇ   res://icon.png  �l      �      G1?��z�c��vN��   res://icon.png.import    _      �      �d��?S���4m���   res://project.binary�y      (      !�V�����|啪�-�_(   res://resources/background.png.import   Pb      �      H���X�ׅ66q�    res://resources/floor.png.import�e      �      ����i
f(�L��$   res://resources/player.png.import   �h      �      P�&U{QPb�lws���            GDSC                   ���Ӷ���   �����϶�   �����Ķ�   �����������������������Ķ���   �����¶�   ���������Ŷ�                   	                  3YY0�  PQV�  W�  T�  PQ�  W�  T�  PQY`        [gd_scene load_steps=8 format=2]

[ext_resource path="res://entities/player/Player.tscn" type="PackedScene" id=1]
[ext_resource path="res://entities/world/Floor.tscn" type="PackedScene" id=2]
[ext_resource path="res://resources/background.png" type="Texture" id=3]
[ext_resource path="res://Main.gd" type="Script" id=4]
[ext_resource path="res://entities/enemies/Turret.tscn" type="PackedScene" id=5]
[ext_resource path="res://assets/textures/player.png" type="Texture" id=6]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 31.5, 63.5 )

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
position = Vector2( 580, 298 )
speed = 500

[node name="Camera2D" type="Camera2D" parent="Player"]
current = true

[node name="Turret" parent="." instance=ExtResource( 5 )]
position = Vector2( 60, 142 )

[node name="Floor" parent="." instance=ExtResource( 2 )]

[node name="Floor2" parent="." instance=ExtResource( 2 )]
position = Vector2( 1519, 466 )

[node name="Floor3" parent="." instance=ExtResource( 2 )]
position = Vector2( 2541, 466 )

[node name="RigidBody2D" type="RigidBody2D" parent="."]
visible = false
position = Vector2( 150, 150 )

[node name="Sprite" type="Sprite" parent="RigidBody2D"]
texture = ExtResource( 6 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="RigidBody2D"]
position = Vector2( 0.5, -0.5 )
shape = SubResource( 1 )

[node name="Wall" type="StaticBody2D" parent="."]
position = Vector2( 225, 267 )

[node name="Sprite" type="Sprite" parent="Wall"]
scale = Vector2( 1, 2 )
texture = ExtResource( 6 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Wall"]
position = Vector2( 0, 0.5 )
shape = SubResource( 1 )
            GDST   X           D   WEBPRIFF8   WEBPVP8L+   /Õ ������I���dD�3�����?��������?�g [remap]

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
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
         GDST"               Z   WEBPRIFFN   WEBPVP8LA   /!@'  T�-N �����!HB�l�@�/j�Hrt"�cp��5��� 5*�hL���~4Ԩ            [remap]

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
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
     GDSTB   B            *   WEBPRIFF   WEBPVP8L   /A@ �؊������            [remap]

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
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        GDST@   @            &   WEBPRIFF   WEBPVP8L   /?� �DD�              [remap]

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
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
     GDST               �   WEBPRIFF�   WEBPVP8L�   /@��(��f��ӗ��C��H���O��(4E�@�)aB!$+��9�D�!� @c�H�l��k�9u/u�u�7`�H��>�������^BD��m�tL��p!�� �&���{K�"%������ ����Y���k����?i����\h'��	=����O煎/3�J����_����I�.����             [remap]

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
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
    GDST               �   WEBPRIFF�   WEBPVP8L�   / ��$ ��?n(j�H�{f�� ��gr+E�M/�[x�DB*�;�>�dd�B(A����
�����1 �$)ڻ�9&�z�%D�_��6ʘw��D3���Ȯ��fo.#���q�$�a�g�x7���;��z���i�^h?ď�����}�З��~	���,!�?���       [remap]

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
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
    GDST!   A            6   WEBPRIFF*   WEBPVP8L   /   0[��Ȥm�_�jagD���                [remap]

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
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
     [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDSC            ~      ���������τ򶶶�   ���������Ӷ�   ���������������Ҷ���   ���������Ӷ�   ����Ҷ��   ��������ض��   �����϶�   ������������������Ŷ   ������������������Ŷ   ����������������ض��   ��������������ض   ����Ķ��   ����¶��   ���������������Ŷ���   ����׶��   �������ض���   ����������������¶��   ����������ڶ    �����������������������������Ҷ�   ���϶���   ���������Ӷ�                   delete_requested                                                    	      
   #      (      )      6      ;      B      I      O      P      W      _      `      f      m      n      o      v      |      3Y2�  YYB�  P�  QSYY8P�  Q;�  SYY;�  V�  YY0�  PQV�  �  PQYY0�  P�	  V�  R�  V�  QV�  �
  �	  S�  T�  �  S�  W�  T�  PQ�  �  P�  QSYY0�  P�  QV�  �  �  �  �  YY0�  PQV�  �  P�  RQYYY0�  P�  QV�  �  T�  PQY`             [gd_scene load_steps=3 format=2]

[ext_resource path="res://entities/AbstractProjectile.gd" type="Script" id=1]

[sub_resource type="CapsuleShape2D" id=1]

[node name="Projectile" type="RigidBody2D"]
collision_layer = 0
collision_mask = 8
script = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Timer" type="Timer" parent="."]

[connection signal="timeout" from="Timer" to="." method="_on_Timer_timeout"]
               [gd_scene load_steps=5 format=2]

[ext_resource path="res://entities/AbstractProjectile.gd" type="Script" id=1]
[ext_resource path="res://assets/textures/proyectile_turret.png" type="Texture" id=2]

[sub_resource type="CircleShape2D" id=1]
radius = 9.0

[sub_resource type="CircleShape2D" id=2]
radius = 8.0

[node name="Projectile" type="StaticBody2D"]
script = ExtResource( 1 )
speed = 500.0

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 2 )

[node name="Timer" type="Timer" parent="."]
wait_time = 5.0

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="CollisionArea" type="Area2D" parent="."]
collision_layer = 0
collision_mask = 2

[node name="CollisionShape2D" type="CollisionShape2D" parent="CollisionArea"]
shape = SubResource( 2 )

[connection signal="timeout" from="Timer" to="." method="_on_Timer_timeout"]
[connection signal="body_entered" from="CollisionArea" to="." method="_on_CollisionArea_body_entered"]
        GDSC   &      *   �      ���������τ򶶶�   ����������Ӷ   ���������������Ӷ���   �������������������Ķ���   ���Ӷ���   �����¶�   ���ӄ�   ����������Ӷ   ������������ض��   �������؄�   �����������ض���   �����϶�   ����������Ҷ���   �����������������Ӷ�   ���������Ŷ�   ����������������¶��   ���Ӷ���   ������¶   ������������϶��   ��������������ض   �������Ķ���   �����Ķ�   ���������Ӷ�   ���������Ӷ�   �������Ӷ���   ��������Ҷ��   ������������������Ŷ   ���������Ҷ�   ������¶    ������������������������������Ҷ   �����������Ҷ���   ���������Ӷ�$   �������������������������������Ҷ���   ���϶���   ����Ķ��   ����¶��    ������������������������������Ҷ   ���ƶ���      delete_requested      _on_projectile_delete_requested                                                      #   	   $   
   %      +      3      4      ;      A      B      H      L      M      S      i      j      r      }      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   3Y8P�  Q;�  V�  YY;�  V�  Y;�  V�  Y;�  YY5;�  V�	  W�
  YYY0�  PQV�  �  �  PQT�  �  Y0�  P�  QV�  T�  �  �  Y0�  PQV�  �  PQYY0�  PQV�  ;�  V�  �  T�  P�  T�  R�  T�  RLMQY�  &�  T�  4�  V�  ;�  V�  �  T�  PQ�  �  T�  P�  QS�  �  T�  P�  T�  RP�  T�  �  T�  QT�  PQQ�  �  T�  PRR�  QYY0�  P�  QV�  �  T�  P�  Q�  �  T�  PQYY0�   P�!  QV�  &�  �  V�  �  �!  S�  W�"  T�#  PQYY0�$  P�!  QV�  &�  �!  V�  �  �  �  W�"  T�%  PQY` [gd_scene load_steps=6 format=2]

[ext_resource path="res://entities/enemies/Turret.gd" type="Script" id=1]
[ext_resource path="res://assets/textures/turret.png" type="Texture" id=2]
[ext_resource path="res://entities/enemies/Projectile.tscn" type="PackedScene" id=3]

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 15, 31.5 )

[sub_resource type="CircleShape2D" id=1]
radius = 331.665

[node name="Turret" type="StaticBody2D"]
collision_layer = 8
collision_mask = 0
script = ExtResource( 1 )
projectile_scene = ExtResource( 3 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 2 )

[node name="FirePosition" type="Position2D" parent="."]
position = Vector2( 0, -20 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 0, -0.5 )
shape = SubResource( 2 )

[node name="Timer" type="Timer" parent="."]

[node name="DetectionPlayer" type="Area2D" parent="."]
collision_layer = 0
collision_mask = 2

[node name="CollisionShape2D" type="CollisionShape2D" parent="DetectionPlayer"]
shape = SubResource( 1 )

[connection signal="timeout" from="Timer" to="." method="_on_Timer_timeout"]
[connection signal="body_entered" from="DetectionPlayer" to="." method="_on_DetectionPlayer_body_entered"]
[connection signal="body_exited" from="DetectionPlayer" to="." method="_on_DetectionPlayer_body_exited"]
     GDSC            o      �����Ӷ�   ������������ض��   �������؄�   �����������ض���   ����������Ӷ   ���������������Ӷ���   �������������������Ķ���   ���Ӷ���   ���Ӷ���   ������������������Ӷ   ���������Ӷ�   �������Ӷ���   ��������Ҷ��   ������������������Ŷ   ��������������ض   ���������Ҷ�   ������¶    ������������������������������Ҷ   ���������Ӷ�   �����������Ҷ���   ���������Ӷ�      delete_requested      _on_projectile_delete_requested                                                     	      
   "      -      4      J      V      W      ^      f      m      3YY5;�  V�  W�  YY8P�  Q;�  Y;�  V�  YYYY0�  PQV�  ;�	  V�
  �  T�  PQ�  �  T�  P�	  Q�  �	  T�  P�  T�  RP�  T�  �  QT�  PQQS�  �	  T�  PRR�  QS�  Y0�  P�  QV�  �  T�  P�  QS�  �  T�  PQSY` GDSC   "   
   +   <     ������������τ�   �����ض�   �����Ӷ�   �����ض�   �����Ķ�   ����Ҷ��   ���������������   ����������������   ���������������������ⶶ   ����������   �������   �������������������Ķ���   �������϶���   ��������   �����������������������Ķ���   ��������Ķ��   ���Ӷ���   �������������Ŷ�   ������������������¶   ����¶��   ����������������Ҷ��   ��������������¶   �������������ض�   ������������������������ض��   ������¶   ���������������������Ҷ�   ���Ӷ���   ζ��   ����������Ķ   ϶��   ���������������Ŷ���   ����׶��   �������������Ӷ�   �涶   ,    �������?     �A   X     
   move_right     	   move_left                fire            jump                                     "      .      :   	   G   
   S      T      W      `      a      j      q      v      w      }      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "     #     $     %     &     '     (   (  )   1  *   :  +   3Y5;�  V�  W�  YY2�  Y8;�  SY8P�  Q;�  V�  �  SY8P�  Q;�  V�  �  SY8P�  Q;�  V�  �  SY8P�  Q;�	  V�  SY8P�  Q;�
  V�  SYY;�  Y;�  V�  �  T�  YY0�  P�  V�  QV�  �  T�  �  S�  �  �  SYY0�  PQV�  ;�  V�  �  P�  T�  P�  QQ�  P�  T�  P�  QQS�  ;�  �  �  �  �  ;�  V�  �  PQ�  �  T�  P�  Q�  �  &P�  T�  P�  QQV�  T�  PQ�  �  �  &�  V�  �  T�  �5  P�  T�  �  �  R�  R�  Q�  (V�  �  T�  �  P�  T�  R�  R�  Q&�  P�  T�  Q�  (�  �  �  &P�  T�  P�	  QQV�  &P�  PQQV�  �  T�  �	  YY0�  P�  QV�  �  PQS�  &P�  PQQV�  �  T�  �
  �  S�  �   P�  R�  T�!  QY`         [gd_scene load_steps=7 format=2]

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
 [gd_scene load_steps=5 format=2]

[ext_resource path="res://entities/AbstractProjectile.gd" type="Script" id=1]
[ext_resource path="res://assets/textures/proyectile_player.png" type="Texture" id=2]

[sub_resource type="CircleShape2D" id=1]
radius = 9.0

[sub_resource type="CircleShape2D" id=2]
radius = 8.0

[node name="Projectile" type="StaticBody2D"]
collision_layer = 0
collision_mask = 0
script = ExtResource( 1 )
speed = 500.0

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Timer" type="Timer" parent="."]
wait_time = 3.0

[node name="CollisionArea" type="Area2D" parent="."]
collision_layer = 0
collision_mask = 8

[node name="CollisionShape2D" type="CollisionShape2D" parent="CollisionArea"]
shape = SubResource( 2 )

[connection signal="timeout" from="Timer" to="." method="_on_Timer_timeout"]
[connection signal="body_entered" from="CollisionArea" to="." method="_on_CollisionArea_body_entered"]
               [gd_scene load_steps=3 format=2]

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
GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

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
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           GDST   X           D   WEBPRIFF8   WEBPVP8L+   /Õ ������I���dD�3�����?��������?�g [remap]

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
               GDSTB   B            *   WEBPRIFF   WEBPVP8L   /A@ �؊������            [remap]

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
              GDST@   @            &   WEBPRIFF   WEBPVP8L   /?� �DD�              [remap]

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
           [remap]

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
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classesL                    class         Player        language      GDScript      path      res://entities/player/Player.gd       base      KinematicBody2D             class      
   Projectile        language      GDScript      path   $   res://entities/AbstractProjectile.gd      base      StaticBody2D   _global_script_class_icons<               Player            
   Projectile            application/config/name$         entrega-5-pinheiro-ezequiel    application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png  +   gui/common/drop_mouse_on_gui_input_disabled            input/move_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      physical_scancode             unicode           echo          script         input/move_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      physical_scancode             unicode           echo          script      
   input/fire�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script      
   input/jump�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      physical_scancode             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode             unicode           echo          script      )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres          