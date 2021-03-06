C R E A T E   T A B L E   R e g i o n   
 (   
     R e g i o n I D     N U M B E R   N O T   N U L L ,   
     R e g i o n D e s c r i p t i o n     C H A R ( 5 0 )   N O T   N U L L ,   
 C O N S T R A I N T   P K _ R e g i o n   
     P R I M A R Y   K E Y   ( R e g i o n I D ) 
 )   
 ;   
 
 C R E A T E   T A B L E   T e r r i t o r i e s   
 (   
     T e r r i t o r y I D     V A R C H A R 2 ( 2 0 )   N O T   N U L L ,   
     T e r r i t o r y D e s c r i p t i o n     C H A R ( 5 0 )   N O T   N U L L ,   
     R e g i o n I D     N U M B E R   N O T   N U L L ,   
 C O N S T R A I N T   P K _ T e r r i t o r i e s   
     P R I M A R Y   K E Y   ( T e r r i t o r y I D ) ,   
 C O N S T R A I N T   F K _ T e r r i t o r i e s _ R e g i o n   F O R E I G N   K E Y   ( R e g i o n I D )   R E F E R E N C E S   R e g i o n ( R e g i o n I D ) 
 )   
 ;   
 
 C R E A T E   T A B L E   C a t e g o r i e s   
 (   
     C a t e g o r y I D     N U M B E R   N O T   N U L L ,   
     C a t e g o r y N a m e     V A R C H A R 2 ( 1 5 )   N O T   N U L L ,   
     D e s c r i p t i o n     V A R C H A R 2 ( 3 0 0 ) ,   
     P i c t u r e     L O N G   R A W ,   
 C O N S T R A I N T   P K _ C a t e g o r i e s   
     P R I M A R Y   K E Y   ( C a t e g o r y I D ) 
 )   
 ;   
 
 C R E A T E   T A B L E   S u p p l i e r s   
 (   
     S u p p l i e r I D     N U M B E R   N O T   N U L L ,   
     C o m p a n y N a m e     V A R C H A R 2 ( 4 0 )   N O T   N U L L ,   
     C o n t a c t N a m e     V A R C H A R 2 ( 3 0 ) ,   
     C o n t a c t T i t l e     V A R C H A R 2 ( 3 0 ) ,   
     A d d r e s s     V A R C H A R 2 ( 6 0 ) ,   
     C i t y     V A R C H A R 2 ( 1 5 ) ,   
     R e g i o n     V A R C H A R 2 ( 1 5 ) ,   
     P o s t a l C o d e     V A R C H A R 2 ( 1 0 ) ,   
     C o u n t r y     V A R C H A R 2 ( 1 5 ) ,   
     P h o n e     V A R C H A R 2 ( 2 4 ) ,   
     F a x     V A R C H A R 2 ( 2 4 ) ,   
     H o m e P a g e     V A R C H A R 2 ( 2 0 0 ) ,   
 C O N S T R A I N T   P K _ S u p p l i e r s   
     P R I M A R Y   K E Y   ( S u p p l i e r I D ) 
 )   
 ;   
 
 C R E A T E   T A B L E   P r o d u c t s   
 (   
     P r o d u c t I D     N U M B E R   N O T   N U L L ,   
     P r o d u c t N a m e     V A R C H A R 2 ( 4 0 )   N O T   N U L L ,   
     S u p p l i e r I D     N U M B E R ,   
     C a t e g o r y I D     N U M B E R ,   
     Q u a n t i t y P e r U n i t     V A R C H A R 2 ( 2 0 ) ,   
     U n i t P r i c e     N U M B E R ,   
     U n i t s I n S t o c k     N U M B E R ,   
     U n i t s O n O r d e r     N U M B E R ,   
     R e o r d e r L e v e l     N U M B E R ,   
     D i s c o n t i n u e d     N U M B E R ( 1 )   N O T   N U L L ,   
 C O N S T R A I N T   P K _ P r o d u c t s   
     P R I M A R Y   K E Y   ( P r o d u c t I D ) ,   
 C O N S T R A I N T   C K _ P r o d u c t s _ U n i t P r i c e       C H E C K   ( ( U n i t P r i c e   > =   0 ) ) ,   
 C O N S T R A I N T   C K _ R e o r d e r L e v e l       C H E C K   ( ( R e o r d e r L e v e l   > =   0 ) ) ,   
 C O N S T R A I N T   C K _ U n i t s I n S t o c k       C H E C K   ( ( U n i t s I n S t o c k   > =   0 ) ) ,   
 C O N S T R A I N T   C K _ U n i t s O n O r d e r       C H E C K   ( ( U n i t s O n O r d e r   > =   0 ) ) ,   
 C O N S T R A I N T   F K _ P r o d u c t s _ C a t e g o r i e s   F O R E I G N   K E Y   ( C a t e g o r y I D )   R E F E R E N C E S   C a t e g o r i e s ( C a t e g o r y I D ) ,   
 C O N S T R A I N T   F K _ P r o d u c t s _ S u p p l i e r s   F O R E I G N   K E Y   ( S u p p l i e r I D )   R E F E R E N C E S   S u p p l i e r s ( S u p p l i e r I D ) 
 )   
 ;   
 
 C R E A T E   T A B L E   S h i p p e r s   
 (   
     S h i p p e r I D     N U M B E R   N O T   N U L L ,   
     C o m p a n y N a m e     V A R C H A R 2 ( 4 0 )   N O T   N U L L ,   
     P h o n e     V A R C H A R 2 ( 2 4 ) ,   
 C O N S T R A I N T   P K _ S h i p p e r s   
     P R I M A R Y   K E Y   ( S h i p p e r I D ) 
 )   
 ;   
 
 C R E A T E   T A B L E   C u s t o m e r s   
 (   
     C u s t o m e r I D     C H A R ( 5 )   N O T   N U L L ,   
     C o m p a n y N a m e     V A R C H A R 2 ( 4 0 )   N O T   N U L L ,   
     C o n t a c t N a m e     V A R C H A R 2 ( 3 0 ) ,   
     C o n t a c t T i t l e     V A R C H A R 2 ( 3 0 ) ,   
     A d d r e s s     V A R C H A R 2 ( 6 0 ) ,   
     C i t y     V A R C H A R 2 ( 1 5 ) ,   
     R e g i o n     V A R C H A R 2 ( 1 5 ) ,   
     P o s t a l C o d e     V A R C H A R 2 ( 1 0 ) ,   
     C o u n t r y     V A R C H A R 2 ( 1 5 ) ,   
     P h o n e     V A R C H A R 2 ( 2 4 ) ,   
     F a x     V A R C H A R 2 ( 2 4 ) ,   
 C O N S T R A I N T   P K _ C u s t o m e r s   
     P R I M A R Y   K E Y   ( C u s t o m e r I D ) 
 )   
 ;   
 
 C R E A T E   T A B L E   E m p l o y e e s   
 (   
     E m p l o y e e I D     N U M B E R   N O T   N U L L ,   
     L a s t N a m e     V A R C H A R 2 ( 2 0 )   N O T   N U L L ,   
     F i r s t N a m e     V A R C H A R 2 ( 1 0 )   N O T   N U L L ,   
     T i t l e     V A R C H A R 2 ( 3 0 ) ,   
     T i t l e O f C o u r t e s y     V A R C H A R 2 ( 2 5 ) ,   
     B i r t h D a t e     D A T E ,   
     H i r e D a t e     D A T E ,   
     A d d r e s s     V A R C H A R 2 ( 6 0 ) ,   
     C i t y     V A R C H A R 2 ( 1 5 ) ,   
     R e g i o n     V A R C H A R 2 ( 1 5 ) ,   
     P o s t a l C o d e     V A R C H A R 2 ( 1 0 ) ,   
     C o u n t r y     V A R C H A R 2 ( 1 5 ) ,   
     H o m e P h o n e     V A R C H A R 2 ( 2 4 ) ,   
     E x t e n s i o n     V A R C H A R 2 ( 4 ) ,   
     P h o t o     L O N G   R A W ,   
     N o t e s     V A R C H A R 2 ( 6 0 0 ) ,   
     R e p o r t s T o     N U M B E R ,   
     P h o t o P a t h     V A R C H A R 2 ( 2 5 5 ) ,   
 C O N S T R A I N T   P K _ E m p l o y e e s   
     P R I M A R Y   K E Y   ( E m p l o y e e I D ) ,   
 C O N S T R A I N T   F K _ E m p l o y e e s _ E m p l o y e e s   F O R E I G N   K E Y   ( R e p o r t s T o )   R E F E R E N C E S   E m p l o y e e s ( E m p l o y e e I D ) 
 )   
 ;   
 
 C R E A T E   T A B L E   E m p l o y e e T e r r i t o r i e s   
 (   
     E m p l o y e e I D     N U M B E R   N O T   N U L L ,   
     T e r r i t o r y I D     V A R C H A R 2 ( 2 0 )   N O T   N U L L ,   
 C O N S T R A I N T   P K _ E m p T e r r i t o r i e s   
     P R I M A R Y   K E Y   ( E m p l o y e e I D ,   T e r r i t o r y I D ) ,   
 C O N S T R A I N T   F K _ E m p T e r r i _ E m p l o y e e s   F O R E I G N   K E Y   ( E m p l o y e e I D )   R E F E R E N C E S   E m p l o y e e s ( E m p l o y e e I D ) ,   
 C O N S T R A I N T   F K _ E m p T e r r i _ T e r r i t o r i e s   F O R E I G N   K E Y   ( T e r r i t o r y I D )   R E F E R E N C E S   T e r r i t o r i e s ( T e r r i t o r y I D ) 
 )   
 ;   
 
 C R E A T E   T A B L E   C u s t o m e r D e m o g r a p h i c s   
 (   
     C u s t o m e r T y p e I D     C H A R ( 1 0 )   N O T   N U L L ,   
     C u s t o m e r D e s c     L O N G ,   
 C O N S T R A I N T   P K _ C u s t o m e r D e m o g r a p h i c s   
     P R I M A R Y   K E Y   ( C u s t o m e r T y p e I D ) 
 )   
 ;   
 
 C R E A T E   T A B L E   C u s t o m e r C u s t o m e r D e m o   
 (   
     C u s t o m e r I D     C H A R ( 5 )   N O T   N U L L ,   
     C u s t o m e r T y p e I D     C H A R ( 1 0 )   N O T   N U L L ,   
 C O N S T R A I N T   P K _ C u s t o m e r D e m o   
     P R I M A R Y   K E Y   ( C u s t o m e r I D ,   C u s t o m e r T y p e I D ) ,   
 C O N S T R A I N T   F K _ C u s t o m e r D e m o   F O R E I G N   K E Y   ( C u s t o m e r T y p e I D )   R E F E R E N C E S   C u s t o m e r D e m o g r a p h i c s ( C u s t o m e r T y p e I D ) ,   
 C O N S T R A I N T   F K _ C u s t o m e r D e m o _ C u s t o m e r s   F O R E I G N   K E Y   ( C u s t o m e r I D )   R E F E R E N C E S   C u s t o m e r s ( C u s t o m e r I D ) 
 )   
 ;   
 
 C R E A T E   T A B L E   O r d e r s   
 (   
     O r d e r I D     N U M B E R   N O T   N U L L ,   
     C u s t o m e r I D     C H A R ( 5 ) ,   
     E m p l o y e e I D     N U M B E R ,   
     T e r r i t o r y I D     V A R C H A R 2 ( 2 0 ) ,   
     O r d e r D a t e     D A T E ,   
     R e q u i r e d D a t e     D A T E ,   
     S h i p p e d D a t e     D A T E ,   
     S h i p V i a     N U M B E R ,   
     F r e i g h t     N U M B E R ,   
     S h i p N a m e     V A R C H A R 2 ( 4 0 ) ,   
     S h i p A d d r e s s     V A R C H A R 2 ( 6 0 ) ,   
     S h i p C i t y     V A R C H A R 2 ( 1 5 ) ,   
     S h i p R e g i o n     V A R C H A R 2 ( 1 5 ) ,   
     S h i p P o s t a l C o d e     V A R C H A R 2 ( 1 0 ) ,   
     S h i p C o u n t r y     V A R C H A R 2 ( 1 5 ) ,   
 C O N S T R A I N T   P K _ O r d e r s   
     P R I M A R Y   K E Y   ( O r d e r I D ) ,   
 C O N S T R A I N T   F K _ O r d e r s _ C u s t o m e r s   F O R E I G N   K E Y   ( C u s t o m e r I D )   R E F E R E N C E S   C u s t o m e r s ( C u s t o m e r I D ) ,   
 C O N S T R A I N T   F K _ O r d e r s _ E m p l o y e e s   F O R E I G N   K E Y   ( E m p l o y e e I D )   R E F E R E N C E S   E m p l o y e e s ( E m p l o y e e I D ) ,   
 C O N S T R A I N T   F K _ O r d e r s _ S h i p p e r s   F O R E I G N   K E Y   ( S h i p V i a )   R E F E R E N C E S   S h i p p e r s ( S h i p p e r I D ) , 
 C O N S T R A I N T   F K _ O r d e r s _ T e r r i t o r i e s   F O R E I G N   K E Y   ( T e r r i t o r y I D )   R E F E R E N C E S   T e r r i t o r i e s ( T e r r i t o r y I D ) 
 )   
 ;   
 
 C R E A T E   T A B L E   O r d e r D e t a i l s   
 (   
     O r d e r I D     N U M B E R   N O T   N U L L ,   
     P r o d u c t I D     N U M B E R   N O T   N U L L ,   
     U n i t P r i c e     N U M B E R   N O T   N U L L ,   
     Q u a n t i t y     N U M B E R   N O T   N U L L ,   
     D i s c o u n t     N U M B E R   N O T   N U L L ,   
 C O N S T R A I N T   P K _ O r d e r _ D e t a i l s   
     P R I M A R Y   K E Y   ( O r d e r I D ,   P r o d u c t I D ) ,   
 C O N S T R A I N T   C K _ D i s c o u n t       C H E C K   ( ( D i s c o u n t   > =   0   a n d   D i s c o u n t   < =   1 ) ) ,   
 C O N S T R A I N T   C K _ Q u a n t i t y       C H E C K   ( ( Q u a n t i t y   >   0 ) ) ,   
 C O N S T R A I N T   C K _ U n i t P r i c e       C H E C K   ( ( U n i t P r i c e   > =   0 ) ) ,   
 C O N S T R A I N T   F K _ O r d e r D e t a i l s _ O r d e r s   F O R E I G N   K E Y   ( O r d e r I D )   R E F E R E N C E S   O r d e r s ( O r d e r I D ) ,   
 C O N S T R A I N T   F K _ O r d e r D e t a i l s _ P r o d u c t s   F O R E I G N   K E Y   ( P r o d u c t I D )   R E F E R E N C E S   P r o d u c t s ( P r o d u c t I D ) 
 ) 
 ; 
 
 