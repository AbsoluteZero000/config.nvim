Vim�UnDo� ��5%��� � �yr�b/y7Ê���]�����  �     },            
       
   
   
    f��X    _�                           ����                                                                                                                                                                                                                                                                                                                                              V       f��?     �                  'mbbill/undotree',   V    cmd = 'UndotreeToggle', -- Optional: Lazy-load the plugin when the command is used   n    keys = { { '<leader>u', ':UndotreeToggle<CR>', desc = 'Toggle UndoTree' } }, -- Optional: Set a keybinding       config = function()   0      -- Optional: Additional configuration here       end,5��                         �#      /              5�_�                          ����                                                                                                                                                                                                                                                                                                                                              V       f��@     �      �    5��                         �#                     �                        �#                    �                        �#                     �                        �#                     �                        �#                     �                         �#                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                              V       f��K     �      �       �      �    5��                        �#              �      5�_�                          ����                                                                                                                                                                                                                                                                                                                                              V       f��N     �      �      'mbbill/undotree',5��                         �#                     5�_�                          ����                                                                                                                                                                                                                                                                                                                                              V       f��O     �      �        'mbbill/undotree',5��                        �#                    5�_�      	                    ����                                                                                                                                                                                                                                                                                                                                              V       f��O     �      �          'mbbill/undotree',5��                        �#                    5�_�      
           	         ����                                                                                                                                                                                                                                                                                                                                              V       f��P     �      �            'mbbill/undotree',5��                        �#                    5�_�   	               
         ����                                                                                                                                                                                                                                                                                                                                                             f��X    �      �              'mbbill/undotree',           cmd = 'UndotreeToggle',           keys = {               {                   '<leader>u',                   function()   K                    vim.cmd('UndotreeToggle') -- Toggle the UndoTree window   f                    vim.cmd('wincmd p')      -- Focus the last opened window, which should be UndoTree                   end,   2                desc = 'Toggle and Focus UndoTree'               },   
        },           config = function()   0            -- Optional additional configuration�    $  �        },5��                         �%              �       �            0      V   �#      �            5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f���     �        �       �        �      jfjdljf5��                          g                     �                          g                     5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             f���     �        �      jff5��                          f                     5��