Vim�UnDo� ��>\�xK�9"����0c��`���423j�O�   8   "		'aplugin_display_settings_page',            2       2   2   2    `h��    _�                             ����                                                                                                                                                                                                                                                                                                                                                             `h��     �                 �              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `h��     �             �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `h��     �                <?php 5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `h��    �                �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `h��    �                <?php // MyPlugin Admin Menu5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `h��    �                <?php // MyPlugin - {Admin Menu5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `h��     �             �             5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                             `h��    �                                             5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                             `h��    �                �             5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                             `h�    �      &       �             5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                             `h��     �         (    �         (    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `h��     �         )    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `h��     �         *    �         *    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `h��    �         +    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `h�M   	 �         ,    �         ,    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `h��     �                P/* ============================  Sub Level Menu  ============================ */       "// exit if file is called directly   'if ( ! defined( 'ABSPATH' ) ) { exit; }       // add sub-level admin menu   'function myplugin_add_sublevel_menu() {       	add_submenu_page(   		'options-general.php',   		'MyPlugin Settings',   		'MyPlugoin',   		'manage_options',   		'myplugin',   "		'myplugin_display_settings_page'   	);       }   9add_action( 'admin_menu', 'myplugin_add_sublevel_menu' );5�_�                       !    ����                                                                                                                                                                                                                                                                                                                                                             `h��   
 �               P/* ============================  Sub Level Menu  ============================ */5�_�      %                      ����                                                                                                                                                                                                                                                                                                                                                             `h��     �      -       �             5�_�      &          %   *        ����                                                                                                                                                                                                                                                                                                                            *   �       *   �       V   �    `h�a     �   *   7   /    �   *   +   /    5�_�   %   '           &           ����                                                                                                                                                                                                                                                                                                                            *   �       *   �       V   �    `hĢ     �                "// exit if file is called directly   'if ( ! defined( 'ABSPATH' ) ) { exit; }5�_�   &   (           '           ����                                                                                                                                                                                                                                                                                                                            (   �       (   �       V   �    `hĤ     �                 5�_�   '   )           (      	    ����                                                                                                                                                                                                                                                                                                                            '   �       '   �       V   �    `hī     �         8      'function myplugin_add_sublevel_menu() {5�_�   (   *           )      
    ����                                                                                                                                                                                                                                                                                                                            '   �       '   �       V   �    `hĮ     �         8      &function yplugin_add_sublevel_menu() {5�_�   )   +           *           ����                                                                                                                                                                                                                                                                                                                            '   �       '   �       V   �    `hķ     �      !   8      		'options-general.php',5�_�   *   ,           +   !       ����                                                                                                                                                                                                                                                                                                                            '   �       '   �       V   �    `h��     �       "   8      		'MyPlugin Settings',5�_�   +   -           ,   "       ����                                                                                                                                                                                                                                                                                                                            "          "   
       v       `h��     �   !   #   8      		'MyPlugin',�   "   #   8    5�_�   ,   .           -   $       ����                                                                                                                                                                                                                                                                                                                            "          "          v       `h��     �   #   %   8      		'myplugin',5�_�   -   /           .   $       ����                                                                                                                                                                                                                                                                                                                            "          "          v       `h�     �   #   %   8      		'yplugin',5�_�   .   0           /   %       ����                                                                                                                                                                                                                                                                                                                            "          "          v       `h�     �   $   &   8      "		'myplugin_display_settings_page'5�_�   /   1           0   %       ����                                                                                                                                                                                                                                                                                                                            "          "          v       `h�     �   $   &   8      !		'yplugin_display_settings_page'5�_�   0   2           1   %       ����                                                                                                                                                                                                                                                                                                                            "          "          v       `h��    �   $   &   8      !		'aplugin_display_settings_page'5�_�   1               2          ����                                                                                                                                                                                                                                                                                                                            "          "          v       `h��    �         8      "		'aplugin_display_settings_page',5�_�             %              ����                                                                                                                                                                                                                                                                                                                                                             `h�     �              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `h�     �              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `h�     �         +       5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                             `h�     �         ,      &function yplugin_add_sublevel_menu() {5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                             `h�     �         ,      &function aplugin_add_sublevel_menu() {5�_�                    '        ����                                                                                                                                                                                                                                                                                                                                                             `h�g     �   '   (   ,    �   &   (   ,      �add_submenu_page( string $parent_slug, string $page_title, string $menu_title, string $capability, string $menu_slug, callable $function = '', int $position = null )5�_�                    '        ����                                                                                                                                                                                                                                                                                                                            '   �       '   �       V   �    `h�|     �   &   '          &add_submenu_page( string $parent_slug,�   '   (          string $page_title,�   (   )          string $menu_title,�   )   *          string $capability,�   *   +          string $menu_slug,�   +   ,          callable $function = '',�   ,   .          int $position = null )5�_�                    -       ����                                                                                                                                                                                                                                                                                                                            '   �       '   �       V   �    `hÄ     �   ,   .   2      int $position = null   )5�_�                    (        ����                                                                                                                                                                                                                                                                                                                            '   �       '   �       V   �    `hØ     �   '   /        �   &   (   ,      	/*   	 */5�_�                    (       ����                                                                                                                                                                                                                                                                                                                            '   �       '   �       V   �    `hå     �   (   )   -    �   '   (   -      &add_submenu_page( string $parent_slug,   string $page_title,   string $menu_title,   string $capability,   string $menu_slug,   callable $function = '',   int $position = null   )5�_�                    '        ����                                                                                                                                                                                                                                                                                                                            '   �       '   �       V   �    `hñ     �   &   6          		/*   '	add_submenu_page( string $parent_slug,   	string $page_title,   	string $menu_title,   	string $capability,   	string $menu_slug,   	callable $function = '',   	int $position = null   	)   		 */   	}   :	add_action( 'admin_menu', 'myplugin_add_sublevel_menu' );       	?>    5�_�                    (       ����                                                                                                                                                                                                                                                                                                                            '   �       '   �       V   �    `hü     �   '   0   5      (		add_submenu_page( string $parent_slug,   		string $page_title,   		string $menu_title,   		string $capability,   		string $menu_slug,   		callable $function = '',   		int $position = null   		)5�_�      !              (       ����                                                                                                                                                                                                                                                                                                                            '   �       '   �       V   �    `hþ    �   '   0   5      )			add_submenu_page( string $parent_slug,   			string $page_title,   			string $menu_title,   			string $capability,   			string $menu_slug,   			callable $function = '',   			int $position = null   			)5�_�      "           !   (       ����                                                                                                                                                                                                                                                                                                                            '   �       '   �       V   �    `h��     �   '   )   5      			add_submenu_page(    				string $parent_slug,5�_�   !   #           "   )       ����                                                                                                                                                                                                                                                                                                                            '   �       '   �       V   �    `h��     �   (   *   6      			string $parent_slug,5�_�   "   $           #   '       ����                                                                                                                                                                                                                                                                                                                            +   �       +   �       V   �    `h��     �   &   '   6      	�   &   (   7          	add_submenu_page(   	)�   (   )   9      		�   (   *   :      		'5�_�   #               $   +        ����                                                                                                                                                                                                                                                                                                                            +   �       +   �       V   �    `h�,     �   *   6        5�_�              !       (       ����                                                                                                                                                                                                                                                                                                                            '   �       '   �       V   �    `h��     �   (   )   5       5��