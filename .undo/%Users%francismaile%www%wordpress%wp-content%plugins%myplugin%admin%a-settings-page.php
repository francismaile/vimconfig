Vim�UnDo� ���u���b	��xG"�I'�YS��^᭱   $       ?          	       	   	   	    `h�K    _�                             ����                                                                                                                                                                                                                                                                                                                                                             `h�l     �                 �              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `h��    �      "       �             5�_�                    #        ����                                                                                                                                                                                                                                                                                                                                                             `h��     �   #            �   #            5�_�                    "        ����                                                                                                                                                                                                                                                                                                                                                             `h��     �   !   "          ?>5�_�                    !        ����                                                                                                                                                                                                                                                                                                                                                             `h��     �       !           5�_�                    !        ����                                                                                                                                                                                                                                                                                                                                                             `h��     �       !           5�_�                    >        ����                                                                                                                                                                                                                                                                                                                                                             `h�    �   >               �   >            5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                             `h�G    �         ?    �         ?    5�_�                  	           ����                                                                                                                                                                                                                                                                                                                                                             `h�J    �                P/* ============================  Sub Level Menu  ============================ */       #// display the plugin settings page   +function myplugin_display_settings_page() {   +	// check that user is allowed admin access   3	if( ! current_user_can('manage_options') ) return;       ?>   	<div class="wrap">   :	<h1><?php echo esc_html(get_admin_page_title() ); ?></h1>   *	<form action="options.php" method="post">       		<?php    			// output security fields   )			settings_fields( 'myplugin_options' );       			// output settings sections   &			do_settings_sections( 'myplugin' );       			// submit button   			submit_button();       		?>       			</form>   	</div>       <?php   }    5��