�I
dC:\Users\tasmiya.sana\Desktop\clone\ebex_pr_trans-master\Ebid\Source\e-auction\App_Data\clsCommon.cs
public 
class 
	clsCommon 
{ 
public 

	clsCommon 
( 
) 
{ 
} 
public 

static 
string 
getConnectionString ,
(, -
)- .
{ 
return 
System 
. 
Configuration #
.# $ 
ConfigurationManager$ 8
.8 9
AppSettings9 D
[D E
$strE Q
]Q R
;R S
} 
public 

static 
void 
SendMail 
(  
string! '
tomail( .
,. /
string0 6
Bodyhtml7 ?
,? @
stringA G
subjectH O
,O P
stringP V
	buyermailW `
)` a
{ 
string 
smtpUserName 
= 
System $
.$ %
Configuration% 2
.2 3 
ConfigurationManager3 G
.G H
AppSettingsH S
[S T
$strT b
]b c
.c d
ToStringd l
(l m
)m n
;n o
string 
smtpPassword 
= 
System $
.$ %
Configuration% 2
.2 3 
ConfigurationManager3 G
.G H
AppSettingsH S
[S T
$strT b
]b c
.c d
ToStringd l
(l m
)m n
;n o
string 

smtpServer 
= 
System "
." #
Configuration# 0
.0 1 
ConfigurationManager1 E
.E F
AppSettingsF Q
[Q R
$strR Z
]Z [
.[ \
ToString\ d
(d e
)e f
;f g

SmtpClient 
client 
= 
new 

SmtpClient  *
(* +
)+ ,
;, -
client 
. 
Host 
= 

smtpServer  
;  !
client   
.   
Port   
=   
$num   
;   
MailMessage## 
objEmail## 
=## 
new## "
MailMessage### .
(##. /
)##/ 0
;##0 1
objEmail$$ 
.$$ 
From$$ 
=$$ 
new$$ 
MailAddress$$ '
($$' (
smtpUserName$$( 4
,$$4 5
$str$$6 H
)$$H I
;$$I J
objEmail%% 
.%% 
To%% 
.%% 
Add%% 
(%% 
tomail%% 
)%% 
;%%  
string&& 
ccmail&& 
=&& 
	buyermail&& !
;&&! "
if-- 

(-- 
ccmail-- 
!=-- 
$str-- 
)-- 
objEmail.. 
... 
CC.. 
... 
Add.. 
(.. 
ccmail.. "
).." #
;..# $
objEmail00 
.00 
Subject00 
=00 
subject00 "
;00" #
objEmail11 
.11 
Body11 
=11 
Bodyhtml11  
;11  !
objEmail22 
.22 

IsBodyHtml22 
=22 
true22 "
;22" #
System33 
.33 
Net33 
.33 
NetworkCredential33 $#
basicAuthenticationInfo33% <
=33= >
new33? B
System33C I
.33I J
Net33J M
.33M N
NetworkCredential33N _
(33_ `
smtpUserName33` l
,33l m
smtpPassword33n z
)33z {
;33{ |
client44 
.44 
Credentials44 
=44 #
basicAuthenticationInfo44 4
;444 5
client55 
.55 
	EnableSsl55 
=55 
true55 
;55  
try77 
{88 	
new99 
Thread99 
(99 
(99 
)99 
=>99 
{99 
client99 %
.99% &
Send99& *
(99* +
objEmail99+ 3
)993 4
;994 5
}996 7
)997 8
.998 9
Start999 >
(99> ?
)99? @
;99@ A
}:: 	
catch;; 
(;; 
	Exception;; 
EX;; 
);; 
{<< 	
}== 	
}>> 
public?? 

static?? 
void?? "
SendMailWithAttachment?? -
(??- .
string??. 4
	FromEmail??5 >
,??? @
string??A G
Toemail??H O
,??O P
string??Q W
Bodyhtml??X `
,??` a
string??b h
subject??j q
,??q r
string??s y
sAttachment	??z �
)
??� �
{@@ 
stringAA 
smtpUserNameAA 
=AA 
SystemAA $
.AA$ %
ConfigurationAA% 2
.AA2 3 
ConfigurationManagerAA3 G
.AAG H
AppSettingsAAH S
[AAS T
$strAAT b
]AAb c
.AAc d
ToStringAAd l
(AAl m
)AAm n
;AAn o
stringBB 
smtpPasswordBB 
=BB 
SystemBB $
.BB$ %
ConfigurationBB% 2
.BB2 3 
ConfigurationManagerBB3 G
.BBG H
AppSettingsBBH S
[BBS T
$strBBT b
]BBb c
.BBc d
ToStringBBd l
(BBl m
)BBm n
;BBn o
stringCC 

smtpServerCC 
=CC 
SystemCC "
.CC" #
ConfigurationCC# 0
.CC0 1 
ConfigurationManagerCC1 E
.CCE F
AppSettingsCCF Q
[CCQ R
$strCCR Z
]CCZ [
.CC[ \
ToStringCC\ d
(CCd e
)CCe f
;CCf g
	FromEmailEE 
=EE 
smtpUserNameEE  
;EE  !

SmtpClientFF 
clientFF 
=FF 
newFF 

SmtpClientFF  *
(FF* +

smtpServerFF+ 5
)FF5 6
;FF6 7
MailMessageGG 
objEmailGG 
=GG 
newGG "
MailMessageGG# .
(GG. /
)GG/ 0
;GG0 1
objEmailHH 
.HH 
FromHH 
=HH 
newHH 
MailAddressHH '
(HH' (
	FromEmailHH( 1
,HH1 2
$strHH3 9
)HH9 :
;HH: ;
objEmailII 
.II 
ToII 
.II 
AddII 
(II 
ToemailII 
)II  
;II  !
objEmailJJ 
.JJ 
SubjectJJ 
=JJ 
subjectJJ "
;JJ" #
objEmailKK 
.KK 
BodyKK 
=KK 
BodyhtmlKK  
;KK  !
objEmailLL 
.LL 

IsBodyHtmlLL 
=LL 
trueLL "
;LL" #
ifMM 

(MM 
sAttachmentMM 
.MM 
TrimMM 
(MM 
)MM 
!=MM !
$strMM" $
)MM$ %
objEmailNN 
.NN 
AttachmentsNN  
.NN  !
AddNN! $
(NN$ %
newNN% (
SystemNN) /
.NN/ 0
NetNN0 3
.NN3 4
MailNN4 8
.NN8 9

AttachmentNN9 C
(NNC D
SystemNND J
.NNJ K
WebNNK N
.NNN O
HttpContextNNO Z
.NNZ [
CurrentNN[ b
.NNb c
ServerNNc i
.NNi j
MapPathNNj q
(NNq r
$str	NNr �
)
NN� �
+
NN� �
$str
NN� �
+
NN� �
sAttachment
NN� �
)
NN� �
)
NN� �
;
NN� �
stringPP 
ccmailPP 
=PP 
SystemPP 
.PP 
ConfigurationPP ,
.PP, - 
ConfigurationManagerPP- A
.PPA B
AppSettingsPPB M
[PPM N
$strPPN X
]PPX Y
.PPY Z
ToStringPPZ b
(PPb c
)PPc d
;PPd e
ifQQ 

(QQ 
ccmailQQ 
!=QQ 
$strQQ 
)QQ 
objEmailRR 
.RR 
CCRR 
.RR 
AddRR 
(RR 
ccmailRR "
)RR" #
;RR# $
clientXX 
.XX 
CredentialsXX 
=XX 
newXX  
SystemXX! '
.XX' (
NetXX( +
.XX+ ,
NetworkCredentialXX, =
(XX= >
smtpUserNameXX> J
,XXJ K
smtpPasswordXXL X
)XXX Y
;XXY Z
clientYY 
.YY 
	EnableSslYY 
=YY 
trueYY 
;YY  
try[[ 
{\\ 	
client]] 
.]] 
Send]] 
(]] 
objEmail]]  
)]]  !
;]]! "
}^^ 	
catch__ 
(__ 
System__ 
.__ 
Net__ 
.__ 
Mail__ 
.__ 
SmtpException__ ,
ex__- /
)__/ 0
{`` 	
}bb 	
}cc 
}dd �]
fC:\Users\tasmiya.sana\Desktop\clone\ebex_pr_trans-master\Ebid\Source\e-auction\App_Data\SecurityAES.cs
public 
	interface 
IAES 
{ 
string 

Decrypt 
( 
string 

ciphertext $
,$ %
string& ,
key- 0
)0 1
;1 2
string 

Encrypt 
( 
string 
	plainText #
,# $
string% +
key, /
)/ 0
;0 1
} 
public 
class 
SecurityAES 
{ 
public 
class 
AES 
: 
IAES 
{ 
private 
readonly 
int 
	_saltSize &
=' (
$num) +
;+ ,
public 
string 
Encrypt 
( 
string $
	plainText% .
,. /
string0 6
key7 :
): ;
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
	plainText% .
). /
)/ 0
{ 
throw 
new !
ArgumentNullException /
(/ 0
$str0 ;
); <
;< =
} 
if!! 
(!! 
string!! 
.!! 
IsNullOrEmpty!! $
(!!$ %
key!!% (
)!!( )
)!!) *
{"" 
throw## 
new## !
ArgumentNullException## /
(##/ 0
$str##0 5
)##5 6
;##6 7
}$$ 
using&& 
(&& 
var&& !
keyDerivationFunction&& ,
=&&- .
new&&/ 2
Rfc2898DeriveBytes&&3 E
(&&E F
key&&F I
,&&I J
	_saltSize&&K T
)&&T U
)&&U V
{'' 
byte(( 
[(( 
](( 
	saltBytes((  
=((! "!
keyDerivationFunction((# 8
.((8 9
Salt((9 =
;((= >
byte)) 
[)) 
])) 
keyBytes)) 
=))  !!
keyDerivationFunction))" 7
.))7 8
GetBytes))8 @
())@ A
$num))A C
)))C D
;))D E
byte** 
[** 
]** 
ivBytes** 
=**  !
keyDerivationFunction**! 6
.**6 7
GetBytes**7 ?
(**? @
$num**@ B
)**B C
;**C D
using,, 
(,, 
var,, 

aesManaged,, %
=,,& '
new,,( +

AesManaged,,, 6
(,,6 7
),,7 8
),,8 9
{-- 

aesManaged.. 
... 
KeySize.. &
=..' (
$num..) ,
;.., -
using00 
(00 
var00 
	encryptor00 (
=00) *

aesManaged00+ 5
.005 6
CreateEncryptor006 E
(00E F
keyBytes00F N
,00N O
ivBytes00P W
)00W X
)00X Y
{11 
MemoryStream22 $
memoryStream22% 1
=222 3
null224 8
;228 9
CryptoStream33 $
cryptoStream33% 1
=332 3
null334 8
;338 9
return55 
WriteMemoryStream55 0
(550 1
	plainText551 :
,55: ;
ref55< ?
	saltBytes55@ I
,55I J
	encryptor55K T
,55T U
ref55V Y
memoryStream55Z f
,55f g
ref55h k
cryptoStream55l x
)55x y
;55y z
}66 
}77 
}88 
}99 	
public;; 
string;; 
Decrypt;; 
(;; 
string;; $
cipher;;% +
,;;+ ,
string;;- 3
key;;4 7
);;7 8
{<< 	
if== 
(== 
string== 
.== 
IsNullOrEmpty== $
(==$ %
cipher==% +
)==+ ,
)==, -
{>> 
throw?? 
new?? !
ArgumentNullException?? /
(??/ 0
$str??0 <
)??< =
;??= >
}@@ 
ifBB 
(BB 
stringBB 
.BB 
IsNullOrEmptyBB $
(BB$ %
keyBB% (
)BB( )
)BB) *
{CC 
throwDD 
newDD !
ArgumentNullExceptionDD /
(DD/ 0
$strDD0 5
)DD5 6
;DD6 7
}EE 
stringFF 

ciphertextFF 
=FF 
cipherFF  &
.FF& '
ReplaceFF' .
(FF. /
$strFF/ 2
,FF2 3
$strFF4 7
)FF7 8
;FF8 9
varGG 
allTheBytesGG 
=GG 
ConvertGG %
.GG% &
FromBase64StringGG& 6
(GG6 7

ciphertextGG7 A
)GGA B
;GGB C
varHH 
	saltBytesHH 
=HH 
allTheBytesHH '
.HH' (
TakeHH( ,
(HH, -
	_saltSizeHH- 6
)HH6 7
.HH7 8
ToArrayHH8 ?
(HH? @
)HH@ A
;HHA B
varII 
ciphertextBytesII 
=II  !
allTheBytesII" -
.II- .
SkipII. 2
(II2 3
	_saltSizeII3 <
)II< =
.II= >
TakeII> B
(IIB C
allTheBytesIIC N
.IIN O
LengthIIO U
-IIV W
	_saltSizeIIX a
)IIa b
.IIb c
ToArrayIIc j
(IIj k
)IIk l
;IIl m
usingKK 
(KK 
varKK !
keyDerivationFunctionKK ,
=KK- .
newKK/ 2
Rfc2898DeriveBytesKK3 E
(KKE F
keyKKF I
,KKI J
	saltBytesKKK T
)KKT U
)KKU V
{LL 
varMM 
keyBytesMM 
=MM !
keyDerivationFunctionMM 4
.MM4 5
GetBytesMM5 =
(MM= >
$numMM> @
)MM@ A
;MMA B
varNN 
ivBytesNN 
=NN !
keyDerivationFunctionNN 3
.NN3 4
GetBytesNN4 <
(NN< =
$numNN= ?
)NN? @
;NN@ A
returnPP 
DecryptWithAESPP %
(PP% &
ciphertextBytesPP& 5
,PP5 6
keyBytesPP7 ?
,PP? @
ivBytesPPA H
)PPH I
;PPI J
}QQ 
}RR 	
privateTT 
stringTT 
WriteMemoryStreamTT (
(TT( )
stringTT) /
	plainTextTT0 9
,TT9 :
refTT; >
byteTT? C
[TTC D
]TTD E
	saltBytesTTF O
,TTO P
ICryptoTransformTTQ a
	encryptorTTb k
,TTk l
refTTm p
MemoryStreamTTq }
memoryStream	TT~ �
,
TT� �
ref
TT� �
CryptoStream
TT� �
cryptoStream
TT� �
)
TT� �
{UU 	
tryVV 
{WW 
memoryStreamXX 
=XX 
newXX "
MemoryStreamXX# /
(XX/ 0
)XX0 1
;XX1 2
tryZZ 
{[[ 
cryptoStream\\  
=\\! "
new\\# &
CryptoStream\\' 3
(\\3 4
memoryStream\\4 @
,\\@ A
	encryptor\\B K
,\\K L
CryptoStreamMode\\M ]
.\\] ^
Write\\^ c
)\\c d
;\\d e
using^^ 
(^^ 
var^^ 
streamWriter^^ +
=^^, -
new^^. 1
StreamWriter^^2 >
(^^> ?
cryptoStream^^? K
)^^K L
)^^L M
{__ 
streamWriter`` $
.``$ %
Write``% *
(``* +
	plainText``+ 4
)``4 5
;``5 6
}aa 
}bb 
finallycc 
{dd 
ifee 
(ee 
cryptoStreamee $
!=ee% '
nullee( ,
)ee, -
{ff 
cryptoStreamgg $
.gg$ %
Disposegg% ,
(gg, -
)gg- .
;gg. /
}hh 
}ii 
varkk 
cipherTextByteskk #
=kk$ %
memoryStreamkk& 2
.kk2 3
ToArraykk3 :
(kk: ;
)kk; <
;kk< =
Arrayll 
.ll 
Resizell 
(ll 
refll  
	saltBytesll! *
,ll* +
	saltBytesll, 5
.ll5 6
Lengthll6 <
+ll= >
cipherTextBytesll? N
.llN O
LengthllO U
)llU V
;llV W
Arraymm 
.mm 
Copymm 
(mm 
cipherTextBytesmm *
,mm* +
$nummm, -
,mm- .
	saltBytesmm/ 8
,mm8 9
	_saltSizemm: C
,mmC D
cipherTextBytesmmE T
.mmT U
LengthmmU [
)mm[ \
;mm\ ]
returnoo 
Convertoo 
.oo 
ToBase64Stringoo -
(oo- .
	saltBytesoo. 7
)oo7 8
;oo8 9
}pp 
finallyqq 
{rr 
ifss 
(ss 
memoryStreamss  
!=ss! #
nullss$ (
)ss( )
{tt 
memoryStreamuu  
.uu  !
Disposeuu! (
(uu( )
)uu) *
;uu* +
}vv 
}ww 
}xx 	
privatezz 
staticzz 
stringzz 
DecryptWithAESzz ,
(zz, -
bytezz- 1
[zz1 2
]zz2 3
ciphertextByteszz4 C
,zzC D
bytezzE I
[zzI J
]zzJ K
keyByteszzL T
,zzT U
bytezzV Z
[zzZ [
]zz[ \
ivByteszz] d
)zzd e
{{{ 	
using|| 
(|| 
var|| 

aesManaged|| !
=||" #
new||$ '

AesManaged||( 2
(||2 3
)||3 4
)||4 5
{}} 
using~~ 
(~~ 
var~~ 
	decryptor~~ $
=~~% &

aesManaged~~' 1
.~~1 2
CreateDecryptor~~2 A
(~~A B
keyBytes~~B J
,~~J K
ivBytes~~L S
)~~S T
)~~T U
{ 
MemoryStream
��  
memoryStream
��! -
=
��. /
null
��0 4
;
��4 5
CryptoStream
��  
cryptoStream
��! -
=
��. /
null
��0 4
;
��4 5
StreamReader
��  
streamReader
��! -
=
��. /
null
��0 4
;
��4 5
try
�� 
{
�� 
memoryStream
�� $
=
��% &
new
��' *
MemoryStream
��+ 7
(
��7 8
ciphertextBytes
��8 G
)
��G H
;
��H I
cryptoStream
�� $
=
��% &
new
��' *
CryptoStream
��+ 7
(
��7 8
memoryStream
��8 D
,
��D E
	decryptor
��F O
,
��O P
CryptoStreamMode
��Q a
.
��a b
Read
��b f
)
��f g
;
��g h
streamReader
�� $
=
��% &
new
��' *
StreamReader
��+ 7
(
��7 8
cryptoStream
��8 D
)
��D E
;
��E F
return
�� 
streamReader
�� +
.
��+ ,
	ReadToEnd
��, 5
(
��5 6
)
��6 7
;
��7 8
}
�� 
finally
�� 
{
�� 
if
�� 
(
�� 
memoryStream
�� (
!=
��) +
null
��, 0
)
��0 1
{
�� 
memoryStream
�� (
.
��( )
Dispose
��) 0
(
��0 1
)
��1 2
;
��2 3
memoryStream
�� (
=
��) *
null
��+ /
;
��/ 0
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �
hC:\Users\tasmiya.sana\Desktop\clone\ebex_pr_trans-master\Ebid\Source\e-auction\App_Start\BundleConfig.cs
	namespace 	
	e_auction
 
. 
	App_Start 
{ 
public		 

class		 
BundleConfig		 
{

 
public 
static 
void 
RegisterBundles *
(* +
BundleCollection+ ;
bundles< C
)C D
{ 	
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) ;
); <
.< =
Include= D
(D E
$str 7
)7 8
)8 9
;9 :
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str 4
)4 5
)5 6
;6 7
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str /
)/ 0
)0 1
;1 2
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str .
,. /
$str ,
), -
)- .
;. /
bundles 
. 
Add 
( 
new 
StyleBundle '
(' (
$str( 7
)7 8
.8 9
Include9 @
(@ A
$str /
,/ 0
$str *
)* +
)+ ,
;, -
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) <
)< =
.= >
Include> E
(E F
$str   9
)  9 :
)  : ;
;  ; <
}!! 	
}"" 
}## �
gC:\Users\tasmiya.sana\Desktop\clone\ebex_pr_trans-master\Ebid\Source\e-auction\App_Start\RouteConfig.cs
	namespace 	
	e_auction
 
{		 
public

 

class

 
RouteConfig

 
{ 
public 
static 
void 
RegisterRoutes )
() *
RouteCollection* 9
routes: @
)@ A
{ 	
routes 
. 
IgnoreRoute 
( 
$str ;
); <
;< =
routes 
. 
MapRoute 
( 
name 
: 
$str 
,  
url 
: 
$str 1
,1 2
defaults 
: 
new 
{ 

controller  *
=+ ,
$str- 3
,3 4
action5 ;
=< =
$str> E
,E F
idG I
=J K
UrlParameterL X
.X Y
OptionalY a
}b c
) 
; 
} 	
} 
} �
tC:\Users\tasmiya.sana\Desktop\clone\ebex_pr_trans-master\Ebid\Source\e-auction\Controllers\AccessDeniedController.cs
	namespace 	
	e_auction
 
. 
Controllers 
{		 
public

 

class

 "
AccessDeniedController

 '
:

( )

Controller

* 4
{ 
private 
Entities 
db 
= 
new !
Entities" *
(* +
)+ ,
;, -
public 
ActionResult 
Index !
(! "
)" #
{ 	
ViewBag 
. 
Menu 
= 
db 
. 
get_role &
(& '
Convert' .
.. /
ToInt32/ 6
(6 7
Session7 >
[> ?
$str? I
]I J
)J K
)K L
;L M
return 
View 
( 
) 
; 
} 	
} 
} �p
oC:\Users\tasmiya.sana\Desktop\clone\ebex_pr_trans-master\Ebid\Source\e-auction\Controllers\AccountController.cs
	namespace 	
	e_auction
 
. 
Controllers 
{ 
public 

class 
AccountController "
:# $

Controller% /
{ 
private 
Entities 
db 
= 
new !
Entities" *
(* +
)+ ,
;, -
public 
ActionResult 
Index !
(! "
)" #
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
HttpGet	 
] 
public 
ActionResult 
Register $
($ %
)% &
{ 	
ViewBag 
. 
CategoryListbag #
=$ %
new& )

SelectList* 4
(4 5
db5 7
.7 8
CategoryMasters8 G
.G H
ToListH N
(N O
)O P
,P Q
$strR ^
,^ _
$str` n
)n o
;o p
ViewBag 
. 
StateListbag  
=! "
new# &

SelectList' 1
(1 2
db2 4
.4 5
StateMasters5 A
.A B
ToListB H
(H I
)I J
,J K
$strL U
,U V
$strW b
)b c
;c d
return   
View   
(   
)   
;   
}!! 	
[%% 	
HttpPost%%	 
]%% 
public&& 
ActionResult&& 
Register&& $
(&&$ %
RegisterMaster&&% 3
registermaster&&4 B
,&&B C
string&&D J
address&&K R
)&&R S
{'' 	
if(( 
((( 

ModelState(( 
.(( 
IsValid(( !
)((! "
{)) 
if++ 
(++ 
this++ 
.++ 
IsCaptchaValid++ #
(++# $
$str++$ :
)++: ;
)++; <
{,, 
db-- 
.-- 
Register-- 
(-- 
registermaster-- *
.--* +

CategoryId--+ 5
,--5 6
$str--7 :
,--: ;
registermaster--< J
.--J K
CompanyName--K V
,--V W
registermaster--X f
.--f g

RegAddress--g q
,--q r
registermaster	--s �
.
--� �
City
--� �
,
--� �
registermaster
--� �
.
--� �
StateId
--� �
,
--� �
registermaster
--� �
.
--� �
pincode
--� �
,
--� �
registermaster
--� �
.
--� �
PanNo
--� �
,
--� �
registermaster
--� �
.
--� �
ContactPerson
--� �
,
--� �
registermaster
--� �
.
--� �
Email
--� �
,
--� �
registermaster
--� �
.
--� �
Mobile
--� �
,
--� �
registermaster
--� �
.
--� �
	Telephone
--� �
,
--� �
registermaster
--� �
.
--� �
Tin
--� �
)
--� �
;
--� �
return.. 
Content.. 
(.. 
$str	.. �
)
..� �
;
..� �
}00 
else11 
{22 
ViewBag33 
.33 

ErrMessage33 
=33  
$str33! ?
;33? @
return44 
RedirectToAction44 #
(44# $
$str44$ .
)44. /
;44/ 0
}55 
}77 
ViewBag88 
.88 
CategoryListbag88 #
=88$ %
new88& )

SelectList88* 4
(884 5
db885 7
.887 8
CategoryMasters888 G
.88G H
ToList88H N
(88N O
)88O P
,88P Q
$str88R ^
,88^ _
$str88` n
)88n o
;88o p
ViewBag99 
.99 
StateListbag99  
=99! "
new99# &

SelectList99' 1
(991 2
db992 4
.994 5
StateMasters995 A
.99A B
ToList99B H
(99H I
)99I J
,99J K
$str99L U
,99U V
$str99W b
)99b c
;99c d
return:: 
View:: 
(:: 
):: 
;:: 
};; 	
[== 	
HttpGet==	 
]== 
public>> 
ActionResult>> 
login>> !
(>>! "
)>>" #
{?? 	
returnAA 
ViewAA 
(AA 
)AA 
;AA 
}BB 	
[DD 	
HttpPostDD	 
]DD 
[EE 	
AllowAnonymousEE	 
]EE 
[FF 	$
ValidateAntiForgeryTokenFF	 !
]FF! "
publicGG 
ActionResultGG 
LoginGG !
(GG! "
LoginMasterGG" -
lcGG. 0
,GG0 1
stringGG1 7

clientpassGG8 B
)GGB C
{HH 	
ifII	 
(II 

ModelStateII 
.II 
IsValidII 
)II 
{JJ	 

varKK 
clientKK 
=KK 
ConvertKK !
.KK! "
ToInt32KK" )
(KK) *
lcKK* ,
.KK, -
ClientIdKK- 5
)KK5 6
;KK6 7
stringLL 
	ipaddressLL 
=LL 
RequestLL  '
.LL' (
UserHostAddressLL( 7
;LL7 8
varMM 
validMM 
=MM 
dbMM 
.MM 

checkloginMM &
(MM& '
clientMM' -
,MM- .

clientpassMM/ 9
)MM9 :
.MM: ;
ToListMM; A
(MMA B
)MMB C
;MMC D
ifOO 
(OO 
validOO 
[OO 
$numOO 
]OO 
==OO 
$numOO 
)OO 
{PP 
varQQ 
defaultcheckQQ !
=QQ" #
dbQQ$ &
.QQ& '
checkdefaultQQ' 3
(QQ3 4
clientQQ4 :
)QQ: ;
.QQ; <
ToListQQ< B
(QQB C
)QQC D
;QQD E
SessionRR 
[RR 
$strRR #
]RR# $
=RR% &
lcRR' )
.RR) *
ClientIdRR* 2
;RR2 3
ifSS 
(SS 
defaultcheckSS  
[SS  !
$numSS! "
]SS" #
==SS# %
$numSS% &
)SS& '
{TT 
returnUU 
RedirectToActionUU ,
(UU, -
$strUU- =
,UU= >
$strUU? E
)UUE F
;UUF G
}VV 
varWW 
roleWW 
=WW 
dbWW 
.WW 
	get_role1WW (
(WW( )
ConvertWW) 0
.WW0 1
ToInt32WW1 8
(WW8 9
SessionWW9 @
[WW@ A
$strWWA K
]WWK L
)WWL M
)WWM N
.WWN O
ToListWWO U
(WWU V
)WWV W
.WWW X
FirstOrDefaultWWX f
(WWf g
)WWg h
.WWh i
rolenameWWi q
;WWq r
UserMasterModelXX  
ummXX! $
=XX% &
newXX' *
UserMasterModelXX+ :
(XX: ;
)XX; <
;XX< =
UserMasterModelYY  
.YY  !
listUserMasterYY! /
=YY0 1
newYY2 5
ListYY6 :
<YY: ;

UserMasterYY; E
>YYE F
(YYF G
)YYG H
;YYH I
UserMasterModelZZ  
.ZZ  !
listUserMasterZZ! /
.ZZ/ 0
AddZZ0 3
(ZZ3 4
newZZ4 7

UserMasterZZ8 B
{ZZC D
LoginIdZZE L
=ZZM N
clientZZO U
.ZZU V
ToStringZZV ^
(ZZ^ _
)ZZ_ `
,ZZ` a
UserNameZZb j
=ZZk l
clientZZm s
.ZZs t
ToStringZZt |
(ZZ| }
)ZZ} ~
,ZZ~ 
RoleName
ZZ� �
=
ZZ� �
role
ZZ� �
,
ZZ� �
	LastLogin
ZZ� �
=
ZZ� �
DateTime
ZZ� �
.
ZZ� �
Now
ZZ� �
}
ZZ� �
)
ZZ� �
;
ZZ� �
List[[ 
<[[ 

UserMaster[[  
>[[  !
lstTemp[[" )
=[[* +
([[, -
List[[- 1
<[[1 2

UserMaster[[2 <
>[[< =
)[[= >
HttpContext[[> I
.[[I J
Application[[J U
[[[U V
$str[[V `
][[` a
;[[a b
int\\ 
i\\ 
=\\ 
lstTemp\\ 
.\\ 
Where\\ $
(\\$ %
x\\% &
=>\\' )
x\\* +
.\\+ ,
LoginId\\, 3
==\\4 6
client\\7 =
.\\= >
ToString\\> F
(\\F G
)\\G H
)\\H I
.\\I J
Count\\J O
(\\O P
)\\P Q
;\\Q R
if]] 
(]] 
i]] 
==]] 
$num]] 
)]] 
{^^ 
lstTemp__ 
.__ 
Add__  
(__  !
new__! $

UserMaster__% /
{__0 1
LoginId__2 9
=__: ;
client__< B
.__B C
ToString__C K
(__K L
)__L M
,__M N
UserName__O W
=__X Y
client__Z `
.__` a
ToString__a i
(__i j
)__j k
,__k l
RoleName__m u
=__v w
role__x |
,__| }
	LastLogin	__~ �
=
__� �
DateTime
__� �
.
__� �
Now
__� �
}
__� �
)
__� �
;
__� �
HttpContext``  
.``  !
Application``! ,
[``, -
$str``- 7
]``7 8
=``9 :
lstTemp``; B
;``B C
}bb 
SessionPersistercc !
.cc! "
LoginIdcc" )
=cc* +
clientcc, 2
.cc2 3
ToStringcc3 ;
(cc; <
)cc< =
;cc= >
SessionPersisterdd !
.dd! "
UserNamedd" *
=dd+ ,
clientdd- 3
.dd3 4
ToStringdd4 <
(dd< =
)dd= >
;dd> ?
UserMasterModelee  
.ee  !
listUserMasteree! /
=ee0 1
nullee2 6
;ee6 7
UserMasterModelee8 G
.eeG H
listUserMastereeH V
=eeW X
lstTempeeY `
;ee` a
ifff 
(ff 
roleff 
==ff 
$strff !
)ff! "
{gg 
varhh 
pendingcounthh %
=hh& '
dbhh( *
.hh* +
get_live_auctionhh+ ;
(hh; <
Converthh< C
.hhC D
ToInt32hhD K
(hhK L
SessionhhL S
[hhS T
$strhhT ^
]hh^ _
)hh_ `
,hh` a
$strhhb o
)hho p
.hhp q
ToListhhq w
(hhw x
)hhx y
.hhy z
Counthhz 
;	hh �
ifii 
(ii 
pendingcountii $
>ii$ %
$numii% &
)ii& '
{jj 
returnkk 
RedirectToActionkk  0
(kk0 1
$strkk1 B
,kkB C
$strkkD L
)kkL M
;kkM N
}ll 
}mm 
returnnn 
RedirectToActionnn (
(nn( )
$strnn) 0
,nn0 1
$strnn2 8
)nn8 9
;nn9 :
}oo 
elsepp 

ModelStateqq 
.qq 
AddModelErrorqq )
(qq) *
$strqq* ,
,qq, -
$strqq- L
)qqL M
;qqM N
returnrr 
Contentrr 
(rr 
$str	rr �
)
rr� �
;
rr� �
}tt	 

returnuu 
Viewuu 
(uu 
)uu 
;uu 
}vv 	
[ww 	
HttpGetww	 
]ww 
publicxx 
ActionResultxx 
ForgetPasswordxx *
(xx* +
)xx+ ,
{yy 	
returnzz 
Viewzz 
(zz 
)zz 
;zz 
}{{ 	
[ 	
HttpPost	 
] 
public
�� 
ActionResult
�� 
ForgetPassword
�� *
(
��* +
string
��+ 1
clientid
��2 :
,
��: ;
string
��; A
email
��B G
)
��G H
{
�� 	
try
�� 
{
�� 
var
�� 

emailcheck
�� 
=
��  
db
��! #
.
��# $
getemail
��$ ,
(
��, -
Convert
��- 4
.
��4 5
ToInt32
��5 <
(
��< =
clientid
��= E
)
��E F
)
��F G
.
��G H
ToList
��H N
(
��N O
)
��O P
.
��P Q
First
��Q V
(
��V W
)
��W X
.
��X Y
Email
��Y ^
.
��^ _
ToString
��_ g
(
��g h
)
��h i
;
��i j
if
�� 
(
�� 
email
�� 
==
�� 

emailcheck
�� $
)
��$ %
{
�� 
var
�� 
check
�� 
=
�� 
db
��  "
.
��" #
ChangePassword
��# 1
(
��1 2
Convert
��2 9
.
��9 :
ToInt32
��: A
(
��A B
clientid
��B J
)
��J K
,
��K L
null
��M Q
,
��Q R
$num
��S T
)
��T U
;
��U V
return
�� 
Content
�� "
(
��" #
$str��# �
)��� �
;��� �
}
�� 
else
�� 
{
�� 
return
�� 
Content
�� "
(
��" #
$str��# �
)��� �
;��� �
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
�� 
{
�� 
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
}
�� 
}�� �`
sC:\Users\tasmiya.sana\Desktop\clone\ebex_pr_trans-master\Ebid\Source\e-auction\Controllers\AddSupplierController.cs
	namespace 	
	e_auction
 
. 
Controllers 
{		 
public

 

class

 !
AddSupplierController

 &
:

' (

Controller

) 3
{ 
private 
Entities 
db 
= 
new !
Entities" *
(* +
)+ ,
;, -
SecurityAES 
. 
AES 
crypt 
= 
new  #
SecurityAES$ /
./ 0
AES0 3
(3 4
)4 5
;5 6
public 
ActionResult 
Supplier $
($ %
String% +
tenderid, 4
,4 5
string5 ;
Search< B
)B C
{ 	
if 
( 
Session 
[ 
$str "
]" #
==$ &
null' +
)+ ,
{ 
return 
RedirectToAction '
(' (
$str( /
,/ 0
$str1 :
): ;
;; <
} 
int 
a 
= 
Convert 
. 
ToInt32 #
(# $
securityUtil$ 0
.0 1
Decode1 7
(7 8
tenderid9 A
)A B
)B C
;C D
if 
( 
tenderid 
== 
null  
)  !
{ 
return 
RedirectToAction '
(' (
$str( 3
,3 4
$str5 =
)= >
;> ?
} 
if 
( 
Search 
!= 
null 
) 
{ 
ViewBag 
. 

SearchText 
=  
Search! '
.' (
ToString( 0
(0 1
)1 2
;2 3
} 
if 
( 
Search 
== 
null 
) 
{ 
ViewBag   
.   

SearchText   "
=  # $
$str  % '
;  ' (
}!! 
ViewBag"" 
."" 
supplier"" 
="" 
db"" !
.""! "
get_supplierlist""" 2
(""2 3
a""3 4
)""4 5
.""5 6
ToList""6 <
(""< =
)""= >
;""> ?
ViewBag## 
.## 
Menu## 
=## 
db## 
.## 
get_role## &
(##& '
Convert##' .
.##. /
ToInt32##/ 6
(##6 7
Session##7 >
[##> ?
$str##? I
]##I J
)##J K
)##K L
;##L M
ViewBag$$ 
.$$ 
companylist$$ 
=$$  !
db$$" $
.$$$ %
get_company$$% 0
($$0 1
Search$$1 7
,$$7 8
Convert$$9 @
.$$@ A
ToInt32$$A H
($$H I
securityUtil$$I U
.$$U V
Decode$$V \
($$\ ]
tenderid$$] e
)$$e f
)$$f g
)$$g h
.$$h i
ToList$$i o
($$o p
)$$p q
;$$q r
return%% 
View%% 
(%% 
)%% 
;%% 
}&& 	
[++ 	
HttpGet++	 
]++ 
public,, 
ActionResult,, 
Add,, 
(,,  
int,,  #
	companyid,,$ -
,,,- .
String,,. 4
tenderid,,5 =
,,,= >
string,,> D
Search,,E K
),,K L
{-- 	
if.. 
(.. 
Session.. 
[.. 
$str.. "
].." #
==..$ &
null..' +
)..+ ,
{// 
return00 
RedirectToAction00 '
(00' (
$str00( /
,00/ 0
$str001 :
)00: ;
;00; <
}11 
ViewBag33 
.33 
Menu33 
=33 
db33 
.33 
get_role33 &
(33& '
Convert33' .
.33. /
ToInt3233/ 6
(336 7
Session337 >
[33> ?
$str33? I
]33I J
)33J K
)33K L
;33L M
try44	 
{55	 

ViewBag66 
.66 

SearchText66 
=66  !
Search66" (
;66( )
Guid77 
Eguid77 
=77 
Guid77 
.77 
NewGuid77 &
(77& '
)77' (
;77( )
db88 
.88 
save_supplier88 
(88 
	companyid88 '
,88' (
Convert88( /
.88/ 0
ToInt32880 7
(887 8
securityUtil888 D
.88D E
Decode88E K
(88K L
tenderid88M U
)88U V
)88V W
,88W X
Convert88X _
.88_ `
ToString88` h
(88h i
Eguid88j o
)88o p
)88p q
;88q r
return99 
RedirectToAction99 $
(99$ %
$str99% /
,99/ 0
new991 4
{995 6
	@tenderid997 @
=99@ A
tenderid99A I
,99I J
@Search99J Q
=99Q R
Search99R X
}99X Y
)99Y Z
;99Z [
}::	 

catch;;	 
{<<	 

return== 
View== 
(== 
)== 
;== 
}>>	 

}?? 	
[@@ 	
HttpGet@@	 
]@@ 
publicAA 
ActionResultAA 
DeleteAA "
(AA" #
intAA# &
	companyidAA' 0
,AA0 1
StringAA2 8
tenderidAA9 A
,AAA B
StringAAB H
SearchAAI O
)AAO P
{BB 	
ifCC 
(CC 
SessionCC 
[CC 
$strCC "
]CC" #
==CC$ &
nullCC' +
)CC+ ,
{DD 
returnEE 
RedirectToActionEE '
(EE' (
$strEE( /
,EE/ 0
$strEE1 :
)EE: ;
;EE; <
}FF 
ViewBagGG 
.GG 
MenuGG 
=GG 
dbGG 
.GG 
get_roleGG &
(GG& '
ConvertGG' .
.GG. /
ToInt32GG/ 6
(GG6 7
SessionGG7 >
[GG> ?
$strGG? I
]GGI J
)GGJ K
)GGK L
;GGL M
tryHH 
{II 
ViewBagJJ 
.JJ 

SearchTextJJ "
=JJ# $
SearchJJ% +
;JJ+ ,
ViewBagKK 
.KK 
supplierKK  
=KK! "
dbKK# %
.KK% &
get_supplierlistKK& 6
(KK6 7
ConvertKK7 >
.KK> ?
ToInt32KK? F
(KKF G
securityUtilKKG S
.KKS T
DecodeKKT Z
(KKZ [
tenderidKK[ c
)KKc d
)KKd e
)KKe f
.KKf g
ToListKKg m
(KKm n
)KKn o
;KKo p
dbLL 
.LL 
del_supplierLL 
(LL  
	companyidLL  )
,LL) *
ConvertLL+ 2
.LL2 3
ToInt32LL3 :
(LL: ;
securityUtilLL; G
.LLG H
DecodeLLH N
(LLN O
tenderidLLO W
)LLW X
)LLX Y
)LLY Z
;LLZ [
returnMM 
RedirectToActionMM '
(MM' (
$strMM( 2
,MM2 3
newMM4 7
{MM8 9
	@tenderidMM: C
=MMD E
tenderidMMF N
,MMN O
@SearchMMO V
=MMV W
SearchMMW ]
}MM^ _
)MM_ `
;MM` a
}NN 
catchOO 
{PP 
returnRR 
ViewRR 
(RR 
)RR 
;RR 
}SS 
}TT 	
[UU 	
HttpPostUU	 
]UU 
publicVV 
ActionResultVV 
SupplierVV $
(VV$ %
SupplierVV% -
listVV. 2
,VV2 3
stringVV4 :
SearchVV; A
,VVA B
stringVVB H
tenderidVVI Q
,VVQ R
stringVVR X
submitVVY _
,VV_ `
stringVV` f
RemarksTextVVg r
)VVr s
{WW 	
ifXX 
(XX 
SessionXX 
[XX 
$strXX "
]XX" #
==XX$ &
nullXX' +
)XX+ ,
{YY 
returnZZ 
RedirectToActionZZ '
(ZZ' (
$strZZ( /
,ZZ/ 0
$strZZ1 :
)ZZ: ;
;ZZ; <
}[[ 
ViewBag\\ 
.\\ 
Menu\\ 
=\\ 
db\\ 
.\\ 
get_role\\ &
(\\& '
Convert\\' .
.\\. /
ToInt32\\/ 6
(\\6 7
Session\\7 >
[\\> ?
$str\\? I
]\\I J
)\\J K
)\\K L
;\\L M
ViewBag]] 
.]] 
supplier]] 
=]] 
db]] !
.]]! "
get_supplierlist]]" 2
(]]2 3
Convert]]3 :
.]]: ;
ToInt32]]; B
(]]B C
securityUtil]]C O
.]]O P
Decode]]P V
(]]V W
tenderid]]W _
)]]_ `
)]]` a
)]]a b
.]]b c
ToList]]c i
(]]i j
)]]j k
;]]k l
try^^ 
{__ 
ViewBag`` 
.`` 

SearchText`` "
=``# $
Search``% +
;``+ ,
ViewBagaa 
.aa 
companylistaa '
=aa( )
dbaa* ,
.aa, -
get_companyaa- 8
(aa8 9
Searchaa9 ?
,aa? @
Convertaa@ G
.aaG H
ToInt32aaH O
(aaO P
securityUtilaaP \
.aa\ ]
Decodeaa] c
(aac d
tenderidaad l
)aal m
)aam n
)aan o
.aao p
ToListaap v
(aav w
)aaw x
;aax y
ifdd 
(dd 
submitdd 
==dd 
$strdd #
)dd# $
{ee 
dbgg 
.gg 
update_tenderStatusgg *
(gg* +
Convertgg+ 2
.gg2 3
ToInt32gg3 :
(gg: ;
securityUtilgg; G
.ggG H
DecodeggH N
(ggN O
tenderidggO W
)ggW X
)ggX Y
,ggY Z
$strgg[ c
,ggc d
Convertgge l
.ggl m
ToInt32ggm t
(ggt u
Sessionggu |
[gg| }
$str	gg} �
]
gg� �
)
gg� �
,
gg� �
RemarksText
gg� �
)
gg� �
;
gg� �
returnhh 
Contenthh "
(hh" #
$str	hh# �
)
hh� �
;
hh� �
}ii 
returnjj 
Viewjj 
(jj 
)jj 
;jj 
}kk 
catchll 
{mm 
returnnn 
Viewnn 
(nn 
)nn 
;nn 
}oo 
}pp 	
[rr 	
HttpGetrr	 
]rr 
publicss 
ActionResultss 
Searchss "
(ss" #
stringss# )
searchss* 0
,ss0 1
stringss1 7
tenderidss8 @
)ss@ A
{tt 	
ViewBaguu 
.uu 
Menuuu 
=uu 
dbuu 
.uu 
get_roleuu &
(uu& '
Convertuu' .
.uu. /
ToInt32uu/ 6
(uu6 7
Sessionuu7 >
[uu> ?
$struu? I
]uuI J
)uuJ K
)uuK L
;uuL M
ViewBagvv 
.vv 
companylistvv 
=vv  
dbvv! #
.vv# $
get_companyvv$ /
(vv/ 0
searchvv0 6
,vv6 7
Convertvv7 >
.vv> ?
ToInt32vv? F
(vvF G
securityUtilvvG S
.vvS T
DecodevvT Z
(vvZ [
tenderidvv[ c
)vvc d
)vvd e
)vve f
.vvf g
ToListvvg m
(vvm n
)vvn o
;vvo p
returnww 
Viewww 
(ww 
)ww 
;ww 
}xx 	
}yy 
}zz �I
lC:\Users\tasmiya.sana\Desktop\clone\ebex_pr_trans-master\Ebid\Source\e-auction\Controllers\HomeController.cs
	namespace 	
	e_auction
 
. 
Controllers 
{		 
public

 

class

 
HomeController

 
:

  !

Controller

" ,
{ 
private 
Entities 
db 
= 
new !
Entities" *
(* +
)+ ,
;, -
[ 	
HttpGet	 
] 
public 
ActionResult 
Index !
(! "
)" #
{ 	
if 
( 
Session 
[ 
$str !
]! "
==" $
null$ (
)( )
{ 
return 
RedirectToAction '
(' (
$str( /
,/ 0
$str1 :
): ;
;; <
} 
ViewBag 
. 
Live 
= 
db 
. 
get_live_auction ,
(, -
Convert- 4
.4 5
ToInt325 <
(< =
Session> E
[E F
$strF P
]P Q
)Q R
,R S
$strT Z
)Z [
;[ \
ViewBag 
. 
Raised 
= 
db 
.  
get_live_auction  0
(0 1
Convert1 8
.8 9
ToInt329 @
(@ A
SessionA H
[H I
$strI S
]S T
)T U
,U V
$strW _
)_ `
;` a
ViewBag 
. 
	Completed 
= 
db  "
." #
get_live_auction# 3
(3 4
Convert4 ;
.; <
ToInt32< C
(C D
SessionD K
[K L
$strL V
]V W
)W X
,X Y
$strZ e
)e f
;f g
ViewBag 
. 
Menu 
= 
db 
. 
get_role &
(& '
Convert' .
.. /
ToInt32/ 6
(6 7
Session7 >
[> ?
$str? I
]I J
)J K
)K L
;L M
return 
View 
( 
) 
; 
} 	
[ 	
HttpGet	 
] 
public 
ActionResult 
POInvoiceTrack *
(* +
)+ ,
{ 	
if   
(   
Session   
[   
$str   "
]  " #
==  $ &
null  ' +
)  + ,
{!! 
return"" 
RedirectToAction"" '
(""' (
$str""( /
,""/ 0
$str""1 :
)"": ;
;""; <
}## 
ViewBag$$ 
.$$ 
PO$$ 
=$$ 
db$$ 
.$$ 
getpopendinglist$$ ,
($$, -
$num$$- .
,$$. /
$str$$0 3
)$$3 4
;$$4 5
ViewBag%% 
.%% 
Invoice%% 
=%% 
db%%  
.%%  !
getpopendinglist%%! 1
(%%1 2
$num%%2 3
,%%3 4
$str%%5 8
)%%8 9
;%%9 :
ViewBag&& 
.&& 
Close&& 
=&& 
db&& 
.&& 
getpopendinglist&& /
(&&/ 0
$num&&0 1
,&&1 2
$str&&3 6
)&&6 7
;&&7 8
ViewBag'' 
.'' 
Menu'' 
='' 
db'' 
.'' 
get_role'' &
(''& '
Convert''' .
.''. /
ToInt32''/ 6
(''6 7
Session''7 >
[''> ?
$str''? I
]''I J
)''J K
)''K L
;''L M
return(( 
View(( 
((( 
)(( 
;(( 
})) 	
public** 
ActionResult** 
Logout** "
(**" #
)**# $
{++ 	
Session,, 
[,, 
$str,, 
],, 
=,,  !
null,," &
;,,& '
return-- 
RedirectToAction-- #
(--# $
$str--$ +
,--+ ,
$str--- 6
)--6 7
;--7 8
}.. 	
public// 
ActionResult// 
ChangePassword// +
(//+ ,
)//, -
{00 	
return11 
View11 
(11 
)11 
;11 
}22 	
public44 

JsonResult44 
UpdatePO44 "
(44" #
string44$ *
hdnTenderid44+ 6
,446 7
string448 >
PO44? A
,44A B
string44C I
PODate44J P
,44P Q
string44R X
vendor44Y _
)44_ `
{55 	
db66 
.66 
UpdatePO66 
(66 
PO66 
,66 
Convert66 #
.66# $

ToDateTime66$ .
(66. /
PODate66/ 5
)665 6
,666 7
vendor668 >
,66> ?
Convert66@ G
.66G H
ToInt3266H O
(66O P
Session66P W
[66W X
$str66X b
]66b c
)66c d
,66d e
Convert66e l
.66l m
ToInt3266m t
(66t u
hdnTenderid	66u �
)
66� �
)
66� �
;
66� �
return77 
Json77 
(77 
$char77 
,77 
JsonRequestBehavior77 /
.77/ 0
AllowGet770 8
)778 9
;779 :
}88 	
public:: 

JsonResult:: 
UpdateInvoice:: '
(::' (
string::( .
hdnTenderidInvoice::/ A
,::A B
string::C I
	InvoiceNo::J S
,::S T
string::U [
InvoiceDate::\ g
)::g h
{;; 	
db<< 
.<< 
UpdateInvoice<< 
(<< 
	InvoiceNo<< &
,<<& '
Convert<<' .
.<<. /

ToDateTime<</ 9
(<<9 :
InvoiceDate<<; F
)<<F G
,<<G H
Convert<<I P
.<<P Q
ToInt32<<Q X
(<<X Y
Session<<Y `
[<<` a
$str<<a k
]<<k l
)<<l m
,<<m n
Convert<<n u
.<<u v
ToInt32<<v }
(<<} ~
hdnTenderidInvoice	<<~ �
)
<<� �
)
<<� �
;
<<� �
return== 
Json== 
(== 
$char== 
,== 
JsonRequestBehavior== 0
.==0 1
AllowGet==1 9
)==9 :
;==: ;
}>> 	
[@@ 	
HttpPost@@	 
]@@ 
publicAA 
ActionResultAA 
ChangePasswordAA *
(AA* +
stringAA+ 1
currentpassAA2 =
,AA= >
stringAA> D
newpassAAE L
,AAL M
stringAAM S

repeatpassAAT ^
)AA^ _
{BB 	
tryCC 
{DD 
ifEE 
(EE 
SessionEE 
[EE 
$strEE &
]EE& '
==EE( *
nullEE+ /
)EE/ 0
{FF 
returnGG 
RedirectToActionGG +
(GG+ ,
$strGG, 3
,GG3 4
$strGG5 >
)GG> ?
;GG? @
}HH 
varII 
validII 
=II 
dbII 
.II 

checkloginII )
(II) *
ConvertII+ 2
.II2 3
ToInt32II3 :
(II: ;
SessionII< C
[IIC D
$strIID N
]IIN O
)IIO P
,IIP Q
currentpassIIR ]
)II] ^
.II^ _
ToListII_ e
(IIe f
)IIf g
;IIg h
ifJJ 
(JJ 
validJJ 
[JJ 
$numJJ 
]JJ 
==JJ 
$numJJ  !
)JJ! "
{KK 
ifLL 
(LL 
newpassLL 
!=LL  "

repeatpassLL# -
)LL- .
{MM 
returnNN 
ContentNN &
(NN& '
$str	NN' �
)
NN� �
;
NN� �
}PP 
elseQQ 
{RR 
varSS 
checkSS !
=SS" #
dbSS$ &
.SS& '
ChangePasswordSS' 5
(SS5 6
ConvertSS6 =
.SS= >
ToInt32SS> E
(SSE F
SessionSSF M
[SSM N
$strSSN X
]SSX Y
)SSY Z
,SSZ [
newpassSS\ c
,SSc d
$numSSe f
)SSf g
;SSg h
returnTT 
RedirectToActionTT /
(TT/ 0
$strTT0 7
,TT7 8
$strTT9 ?
)TT? @
;TT@ A
}UU 
}WW 
elseXX 
{YY 
returnZZ 
ContentZZ "
(ZZ" #
$str	ZZ# �
)
ZZ� �
;
ZZ� �
}[[ 
}\\ 
catch]] 
(]] 
	Exception]] 
ex]] 
)]] 
{^^ 
return__ 
View__ 
(__ 
)__ 
;__ 
}`` 
}aa 	
}bb 
}cc ��
nC:\Users\tasmiya.sana\Desktop\clone\ebex_pr_trans-master\Ebid\Source\e-auction\Controllers\TenderController.cs
	namespace 	
	e_auction
 
. 
Controllers 
{ 
public 

class 
TenderController !
:" #

Controller$ .
{ 
private 
Entities 
db 
= 
new !
Entities" *
(* +
)+ ,
;, -
[ 	
HttpGet	 
] 
public 
ActionResult 
Index !
(! "
)" #
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
HttpGet	 
] 
[ 	
CustomAuthorize	 
( 
Roles 
=  
$str! 2
)2 3
]3 4
public 
ActionResult 
	AddTender %
(% &
)& '
{   	
if!! 
(!! 
Session!! 
[!! 
$str!! "
]!!" #
==!!$ &
null!!' +
)!!+ ,
{"" 
return## 
RedirectToAction## '
(##' (
$str##( /
,##/ 0
$str##1 :
)##: ;
;##; <
}$$ 
var%% 
client%% 
=%% 
Convert%% 
.%%  
ToInt32%%  '
(%%' (
Session%%( /
[%%/ 0
$str%%0 :
]%%: ;
.%%; <
ToString%%< D
(%%D E
)%%E F
)%%F G
;%%G H
ViewBag&& 
.&& 

MinListbag&& 
=&&  
new&&! $

SelectList&&% /
(&&/ 0
db&&0 2
.&&2 3

MinPeriods&&3 =
.&&= >
ToList&&> D
(&&D E
)&&E F
,&&F G
$str&&H L
,&&L M
$str&&N Z
)&&Z [
;&&[ \
ViewBag'' 
.'' 
CompanyListbag'' "
=''# $
new''% (

SelectList'') 3
(''3 4
db''4 6
.''6 7
	companies''7 @
.''@ A
Where''A F
(''F G
d''G H
=>''H J
d''J K
.''K L
ClientId''L T
==''T V
client''V \
)''\ ]
.''] ^
ToList''^ d
(''d e
)''e f
,''f g
$str''g r
,''r s
$str	''t �
)
''� �
;
''� �
ViewBag(( 
.(( 
Menu(( 
=(( 
db(( 
.(( 
get_role(( &
(((& '
Convert((' .
.((. /
ToInt32((/ 6
(((6 7
Session((7 >
[((> ?
$str((? I
]((I J
)((J K
)((K L
;((L M
return)) 
View)) 
()) 
))) 
;)) 
}** 	
[++ 	
HttpPost++	 
]++ 
[,, 	
CustomAuthorize,,	 
(,, 
Roles,, 
=,,  
$str,,! 2
),,2 3
],,3 4
public-- 
ActionResult-- 
	AddTender-- %
(--% &
Tender--& ,
td--- /
,--/ 0
string--0 6
tenderid--7 ?
,--? @
HttpPostedFileBase--@ R

Attachment--S ]
)--] ^
{.. 	
if// 
(// 
Session// 
[// 
$str// "
]//" #
==//$ &
null//' +
)//+ ,
{00 
return11 
RedirectToAction11 '
(11' (
$str11( /
,11/ 0
$str111 :
)11: ;
;11; <
}22 
if33 
(33 

ModelState33 
.33 
IsValid33 !
)33! "
{44 
int55 
tid55 
=55 
$num55 
;55 
if66 
(66 
tenderid66 
!=66 
null66 !
)66! "
{77 
tid88 
=88 
Convert88 
.88  
ToInt3288  '
(88' (
securityUtil88( 4
.884 5
Decode885 ;
(88; <
tenderid88< D
)88D E
)88E F
;88F G
}99 

SelectList:: 

tenderlist:: %
;::% &
int;; 
client;; 
=;; 
Convert;; $
.;;$ %
ToInt32;;% ,
(;;, -
Session;;- 4
[;;4 5
$str;;5 ?
];;? @
.;;@ A
ToString;;A I
(;;I J
);;J K
);;K L
;;;L M

tenderlist<< 
=<< 
new<< 

SelectList<< )
(<<) *
db<<* ,
.<<, -
save_tender<<- 8
(<<8 9
tid<<9 <
,<<< =
client<<> D
,<<D E
td<<F H
.<<H I

TenderDesc<<I S
,<<S T
null<<U Y
,<<Y Z
td<<[ ]
.<<] ^
	StartDate<<^ g
,<<g h
td<<i k
.<<k l
	StartTime<<l u
,<<u v
Convert<<v }
.<<} ~
ToInt32	<<~ �
(
<<� �
td
<<� �
.
<<� �

TimePeriod
<<� �
.
<<� �
ToString
<<� �
(
<<� �
)
<<� �
)
<<� �
,
<<� �
Convert
<<� �
.
<<� �
ToInt32
<<� �
(
<<� �
td
<<� �
.
<<� �
Company
<<� �
.
<<� �
ToString
<<� �
(
<<� �
)
<<� �
)
<<� �
,
<<� �
$num
<<� �
,
<<� �
td
<<� �
.
<<� �
WF_No
<<� �
)
<<� �
.
<<� �
ToList
<<� �
(
<<� �
)
<<� �
)
<<� �
;
<<� �
if== 
(== 

Attachment== 
!=== !
null==" &
&&==' )

Attachment==* 4
.==4 5
ContentLength==5 B
>==C D
$num==E F
)==F G
try>> 
{?? 
if@@ 
(@@ 

Attachment@@ "
.@@" #
ContentLength@@# 0
>@@1 2
$num@@3 :
)@@: ;
{AA 
returnBB 
ContentBB &
(BB& '
$str	BB' �
)
BB� �
;
BB� �
}DD 
stringEE 
pathEE 
=EE  !
PathEE" &
.EE& '
CombineEE' .
(EE. /
ServerEE/ 5
.EE5 6
MapPathEE6 =
(EE= >
$strEE> H
)EEH I
,EEI J
PathEEK O
.EEO P
GetFileNameEEP [
(EE[ \
ConvertEE\ c
.EEc d
ToStringEEd l
(EEl m

tenderlistEEm w
.EEw x
ToListEEx ~
(EE~ 
)	EE �
.
EE� �
Single
EE� �
(
EE� �
)
EE� �
.
EE� �
Text
EE� �
)
EE� �
+
EE� �
Path
EE� �
.
EE� �
GetExtension
EE� �
(
EE� �

Attachment
EE� �
.
EE� �
FileName
EE� �
)
EE� �
)
EE� �
)
EE� �
;
EE� �

AttachmentFF 
.FF 
SaveAsFF %
(FF% &
pathFF& *
)FF* +
;FF+ ,
StringGG 
FilenameGG #
=GG$ %
PathGG& *
.GG* +
CombineGG+ 2
(GG2 3
PathGG3 7
.GG7 8
GetFileNameGG8 C
(GGC D
ConvertGGD K
.GGK L
ToStringGGL T
(GGT U

tenderlistGGU _
.GG_ `
ToListGG` f
(GGf g
)GGg h
.GGh i
SingleGGi o
(GGo p
)GGp q
.GGq r
TextGGr v
)GGv w
+GGx y
PathGGz ~
.GG~ 
GetExtension	GG �
(
GG� �

Attachment
GG� �
.
GG� �
FileName
GG� �
)
GG� �
)
GG� �
)
GG� �
;
GG� �
dbHH 
.HH 
file_uploadHH "
(HH" #
FilenameHH# +
,HH+ ,
ConvertHH- 4
.HH4 5
ToInt32HH5 <
(HH< =

tenderlistHH= G
.HHG H
ToListHHH N
(HHN O
)HHO P
.HHP Q
SingleHHQ W
(HHW X
)HHX Y
.HHY Z
TextHHZ ^
)HH^ _
)HH_ `
;HH` a
ViewBagII 
.II 
MessageII #
=II$ %
$strII& B
;IIB C
}JJ 
catchKK 
(KK 
	ExceptionKK  
exKK! #
)KK# $
{LL 
ViewBagMM 
.MM 
MessageMM #
=MM$ %
$strMM& .
+MM/ 0
exMM1 3
.MM3 4
MessageMM4 ;
.MM; <
ToStringMM< D
(MMD E
)MME F
;MMF G
}NN 
elseOO 
{PP 
ViewBagQQ 
.QQ 
MessageQQ 
=QQ  !
$strQQ" B
;QQB C
}RR 
ViewBagSS 
.SS 

MinListbagSS 
=SS  
newSS! $

SelectListSS% /
(SS/ 0
dbSS0 2
.SS2 3

MinPeriodsSS3 =
.SS= >
ToListSS> D
(SSD E
)SSE F
,SSF G
$strSSH L
,SSL M
$strSSN Z
)SSZ [
;SS[ \
ViewBagTT 
.TT 
CompanyListbagTT "
=TT# $
newTT% (

SelectListTT) 3
(TT3 4
dbTT4 6
.TT6 7
	companiesTT7 @
.TT@ A
WhereTTA F
(TTF G
dTTG H
=>TTI K
dTTL M
.TTM N
ClientIdTTN V
==TTW Y
clientTTZ `
)TT` a
.TTa b
ToListTTb h
(TTh i
)TTi j
,TTj k
$strTTl w
,TTw x
$str	TTy �
)
TT� �
;
TT� �
returnUU 
RedirectToActionUU #
(UU# $
$strUU$ +
,UU+ ,
$strUU- 5
,UU5 6
newUU7 :
{UU; <
	@tenderidUU= F
=UUG H
(UUI J
securityUtilUUK W
.UUW X
EncodeUUX ^
(UU^ _

tenderlistUU_ i
.UUi j
ToListUUj p
(UUp q
)UUq r
.UUr s
SingleUUs y
(UUy z
)UUz {
.UU{ |
Text	UU| �
)
UU� �
)
UU� �
}
UU� �
)
UU� �
;
UU� �
}VV 
ViewBagWW 
.WW 
MenuWW 
=WW 
dbWW 
.WW 
get_roleWW &
(WW& '
ConvertWW' .
.WW. /
ToInt32WW/ 6
(WW6 7
SessionWW7 >
[WW> ?
$strWW? I
]WWI J
)WWJ K
)WWK L
;WWL M
returnXX 
ViewXX 
(XX 
)XX 
;XX 
}YY 	
[\\ 	
HttpGet\\	 
]\\ 
[]] 	
CustomAuthorize]]	 
(]] 
Roles]] 
=]]  
$str]]! 2
)]]2 3
]]]3 4
public^^ 
ActionResult^^ 

EditTender^^ &
(^^& '
String^^' -
tenderid^^. 6
)^^6 7
{__ 	
if`` 
(`` 
Session`` 
[`` 
$str`` "
]``" #
==``$ &
null``' +
)``+ ,
{aa 
returnbb 
RedirectToActionbb '
(bb' (
$strbb( /
,bb/ 0
$strbb1 :
)bb: ;
;bb; <
}cc 
vardd 
clientdd 
=dd 
Convertdd  
.dd  !
ToInt32dd! (
(dd( )
Sessiondd) 0
[dd0 1
$strdd1 ;
]dd; <
.dd< =
ToStringdd= E
(ddE F
)ddF G
)ddG H
;ddH I
ViewBagee 
.ee 
MinListee 
=ee 
newee !

SelectListee" ,
(ee, -
dbee- /
.ee/ 0

MinPeriodsee0 :
.ee: ;
ToListee; A
(eeA B
)eeB C
,eeC D
$streeE I
,eeI J
$streeK W
)eeW X
;eeX Y
ViewBagff 
.ff 
CompanyListff 
=ff  !
newff" %

SelectListff& 0
(ff0 1
dbff1 3
.ff3 4
	companiesff4 =
.ff= >
Whereff> C
(ffC D
dffD E
=>ffF H
dffI J
.ffJ K
ClientIdffK S
==ffT V
clientffW ]
)ff] ^
.ff^ _
ToListff_ e
(ffe f
)fff g
,ffg h
$strffi t
,fft u
$str	ffv �
)
ff� �
;
ff� �
ViewBaggg 
.gg 
Menugg 
=gg 
dbgg 
.gg 
get_rolegg &
(gg& '
Convertgg' .
.gg. /
ToInt32gg/ 6
(gg6 7
Sessiongg7 >
[gg> ?
$strgg? I
]ggI J
)ggJ K
)ggK L
;ggL M
varhh 
idhh 
=hh 
inthh 
.hh 
Parsehh 
(hh 
securityUtilhh +
.hh+ ,
Decodehh, 2
(hh2 3
tenderidhh3 ;
)hh; <
)hh< =
;hh= >
Tenderii 
tenderii 
=ii 
dbii 
.ii 
Tendersii &
.ii& '
Singleii' -
(ii- .
mii. /
=>ii0 2
mii3 4
.ii4 5
TenderIdii5 =
==ii> @
idiiA C
)iiC D
;iiD E
returnjj 
Viewjj 
(jj 
tenderjj 
)jj 
;jj  
}kk 	
[ll 	
HttpPostll	 
]ll 
[mm 	
CustomAuthorizemm	 
(mm 
Rolesmm 
=mm  
$strmm! 2
)mm2 3
]mm3 4
publicnn 
ActionResultnn 

EditTendernn &
(nn& '
Tendernn' -
tdnn. 0
,nn0 1
stringnn2 8
tenderidnn9 A
,nnA B
HttpPostedFileBasennC U

AttachmentnnV `
)nn` a
{oo 	
ifpp 
(pp 
Sessionpp 
[pp 
$strpp "
]pp" #
==pp$ &
nullpp' +
)pp+ ,
{qq 
returnrr 
RedirectToActionrr '
(rr' (
$strrr( /
,rr/ 0
$strrr1 :
)rr: ;
;rr; <
}ss 
iftt 
(tt 
tenderidtt 
!=tt 
nulltt 
)tt 
{uu 
tdvv 
.vv 
TenderIdvv 
=vv 
Convertvv %
.vv% &
ToInt32vv& -
(vv- .
securityUtilvv. :
.vv: ;
Decodevv; A
(vvA B
tenderidvvB J
)vvJ K
)vvK L
;vvL M

SelectListww 

tenderlistww %
;ww% &
intxx 
clientxx 
=xx 
Convertxx $
.xx$ %
ToInt32xx% ,
(xx, -
Sessionxx- 4
[xx4 5
$strxx5 ?
]xx? @
.xx@ A
ToStringxxA I
(xxI J
)xxJ K
)xxK L
;xxL M

tenderlistzz 
=zz 
newzz  

SelectListzz! +
(zz+ ,
dbzz, .
.zz. /
save_tenderzz/ :
(zz: ;
Convertzz; B
.zzB C
ToInt32zzC J
(zzJ K
securityUtilzzK W
.zzW X
DecodezzX ^
(zz^ _
tenderidzz_ g
)zzg h
)zzh i
,zzi j
clientzzk q
,zzq r
tdzzs u
.zzu v

TenderDesc	zzv �
,
zz� �
td
zz� �
.
zz� �

Attachment
zz� �
,
zz� �
td
zz� �
.
zz� �
	StartDate
zz� �
,
zz� �
td
zz� �
.
zz� �
	StartTime
zz� �
,
zz� �
Convert
zz� �
.
zz� �
ToInt32
zz� �
(
zz� �
td
zz� �
.
zz� �

TimePeriod
zz� �
.
zz� �
ToString
zz� �
(
zz� �
)
zz� �
)
zz� �
,
zz� �
Convert
zz� �
.
zz� �
ToInt32
zz� �
(
zz� �
td
zz� �
.
zz� �
Company
zz� �
.
zz� �
ToString
zz� �
(
zz� �
)
zz� �
)
zz� �
,
zz� �
$num
zz� �
,
zz� �
td
zz� �
.
zz� �
WF_No
zz� �
)
zz� �
.
zz� �
ToList
zz� �
(
zz� �
)
zz� �
)
zz� �
;
zz� �
if{{ 
({{ 

Attachment{{ 
!={{ !
null{{" &
&&{{' )

Attachment{{* 4
.{{4 5
ContentLength{{5 B
>{{C D
$num{{E F
){{F G
try|| 
{}} 
if~~ 
(~~ 

Attachment~~ &
.~~& '
ContentLength~~' 4
>~~5 6
$num~~7 =
)~~= >
{ 
return
�� "
Content
��# *
(
��* +
$str��+ �
)��� �
;��� �
}
�� 
string
�� 
path
�� #
=
��$ %
Path
��& *
.
��* +
Combine
��+ 2
(
��2 3
Server
��3 9
.
��9 :
MapPath
��: A
(
��A B
$str
��B L
)
��L M
,
��M N
Path
��O S
.
��S T
GetFileName
��T _
(
��_ `
Convert
��` g
.
��g h
ToString
��h p
(
��p q

tenderlist
��q {
.
��{ |
ToList��| �
(��� �
)��� �
.��� �
Single��� �
(��� �
)��� �
.��� �
Text��� �
)��� �
+��� �
Path��� �
.��� �
GetExtension��� �
(��� �

Attachment��� �
.��� �
FileName��� �
)��� �
)��� �
)��� �
;��� �

Attachment
�� "
.
��" #
SaveAs
��# )
(
��) *
path
��* .
)
��. /
;
��/ 0
String
�� 
Filename
�� '
=
��( )
Path
��* .
.
��. /
Combine
��/ 6
(
��6 7
Path
��7 ;
.
��; <
GetFileName
��< G
(
��G H
Convert
��H O
.
��O P
ToString
��P X
(
��X Y

tenderlist
��Y c
.
��c d
ToList
��d j
(
��j k
)
��k l
.
��l m
Single
��m s
(
��s t
)
��t u
.
��u v
Text
��v z
)
��z {
+
��| }
Path��~ �
.��� �
GetExtension��� �
(��� �

Attachment��� �
.��� �
FileName��� �
)��� �
)��� �
)��� �
;��� �
db
�� 
.
�� 
file_upload
�� &
(
��& '
Filename
��' /
,
��/ 0
Convert
��1 8
.
��8 9
ToInt32
��9 @
(
��@ A

tenderlist
��A K
.
��K L
ToList
��L R
(
��R S
)
��S T
.
��T U
Single
��U [
(
��[ \
)
��\ ]
.
��] ^
Text
��^ b
)
��b c
)
��c d
;
��d e
ViewBag
�� 
.
��  
Message
��  '
=
��( )
$str
��* F
;
��F G
}
�� 
catch
�� 
(
�� 
	Exception
�� $
ex
��% '
)
��' (
{
�� 
ViewBag
�� 
.
��  
Message
��  '
=
��( )
$str
��* 2
+
��3 4
ex
��5 7
.
��7 8
Message
��8 ?
.
��? @
ToString
��@ H
(
��H I
)
��I J
;
��J K
}
�� 
else
�� 
{
�� 
ViewBag
�� 
.
�� 
Message
�� #
=
��$ %
$str
��& F
;
��F G
}
�� 
ViewBag
�� 
.
�� 
MinList
�� 
=
��  !
new
��" %

SelectList
��& 0
(
��0 1
db
��1 3
.
��3 4

MinPeriods
��4 >
.
��> ?
ToList
��? E
(
��E F
)
��F G
,
��G H
$str
��I M
,
��M N
$str
��O [
)
��[ \
;
��\ ]
ViewBag
�� 
.
�� 
CompanyList
�� #
=
��$ %
new
��& )

SelectList
��* 4
(
��4 5
db
��5 7
.
��7 8
	companies
��8 A
.
��A B
Where
��B G
(
��G H
d
��H I
=>
��J L
d
��M N
.
��N O
ClientId
��O W
==
��X Z
client
��[ a
)
��a b
.
��b c
ToList
��c i
(
��i j
)
��j k
,
��k l
$str
��m x
,
��x y
$str��z �
)��� �
;��� �
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( 2
,
��2 3
$str
��4 @
,
��@ A
new
��B E
{
��F G
	@tenderid
��H Q
=
��R S
tenderid
��T \
}
��] ^
)
��^ _
;
��_ `
}
�� 
ViewBag
�� 
.
�� 
Menu
�� 
=
�� 
db
�� 
.
�� 
get_role
�� &
(
��& '
Convert
��' .
.
��. /
ToInt32
��/ 6
(
��6 7
Session
��7 >
[
��> ?
$str
��? I
]
��I J
)
��J K
)
��K L
;
��L M
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ /
,
��/ 0
$str
��0 8
)
��8 9
;
��9 :
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
CustomAuthorize
��	 
(
�� 
Roles
�� 
=
��  
$str
��! (
)
��( )
]
��) *
public
�� 
ActionResult
�� 
ApproveTender
�� )
(
��) *
string
��* 0
tenderid
��1 9
)
��9 :
{
�� 	
if
�� 
(
�� 
Session
�� 
[
�� 
$str
�� "
]
��" #
==
��$ &
null
��' +
)
��+ ,
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
$str
��1 :
)
��: ;
;
��; <
}
�� 
ViewBag
�� 
.
�� 
Menu
�� 
=
�� 
db
�� 
.
�� 
get_role
�� &
(
��& '
Convert
��' .
.
��. /
ToInt32
��/ 6
(
��6 7
Session
��7 >
[
��> ?
$str
��? I
]
��I J
)
��J K
)
��K L
;
��L M
ViewBag
�� 
.
�� 
PendingApproval
�� #
=
��# $
db
��$ &
.
��& '
get_live_auction
��' 7
(
��7 8
Convert
��8 ?
.
��? @
ToInt32
��@ G
(
��G H
Session
��H O
[
��O P
$str
��P Z
]
��Z [
)
��[ \
,
��\ ]
$str
��] j
)
��j k
;
��k l
ViewBag
�� 
.
�� 

BidsDetail
�� 
=
��  
db
��! #
.
��# $
get_Bid_detail
��$ 2
(
��2 3
Convert
��3 :
.
��: ;
ToInt32
��; B
(
��B C
securityUtil
��C O
.
��O P
Decode
��P V
(
��V W
tenderid
��W _
)
��_ `
)
��` a
,
��a b
Convert
��c j
.
��j k
ToInt32
��k r
(
��r s
Session
��s z
[
��z {
$str��{ �
]��� �
)��� �
)��� �
;��� �
ViewBag
�� 
.
�� 

ItemDetail
�� 
=
��  
db
��! #
.
��# $
get_item_detail
��$ 3
(
��3 4
Convert
��4 ;
.
��; <
ToInt32
��< C
(
��C D
securityUtil
��D P
.
��P Q
Decode
��Q W
(
��W X
tenderid
��X `
)
��` a
)
��a b
,
��b c
Convert
��d k
.
��k l
ToInt32
��l s
(
��s t
Session
��t {
[
��{ |
$str��| �
]��� �
)��� �
)��� �
;��� �
ViewBag
�� 
.
�� 
TenderDetail
��  
=
��! "
db
��# %
.
��% &
get_tender_detail
��& 7
(
��7 8
Convert
��8 ?
.
��? @
ToInt32
��@ G
(
��G H
securityUtil
��H T
.
��T U
Decode
��U [
(
��[ \
tenderid
��\ d
)
��d e
)
��e f
,
��f g
Convert
��h o
.
��o p
ToInt32
��p w
(
��w x
Session
��x 
[�� �
$str��� �
]��� �
)��� �
)��� �
;��� �
ViewBag
�� 
.
�� 
AddedSupplier
�� !
=
��" #
db
��$ &
.
��& '
Get_AddedSupplier
��' 8
(
��8 9
Convert
��9 @
.
��@ A
ToInt32
��A H
(
��H I
securityUtil
��I U
.
��U V
Decode
��V \
(
��\ ]
tenderid
��] e
)
��e f
)
��f g
)
��g h
;
��h i
ViewBag
�� 
.
�� 
Tracking
�� 
=
�� 
db
�� !
.
��! "
get_Tracking
��" .
(
��. /
Convert
��/ 6
.
��6 7
ToInt32
��7 >
(
��> ?
securityUtil
��? K
.
��K L
Decode
��L R
(
��R S
tenderid
��S [
)
��[ \
)
��\ ]
)
��] ^
;
��^ _
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
CustomAuthorize
��	 
(
�� 
Roles
�� 
=
��  
$str
��! (
)
��( )
]
��) *
public
�� 
ActionResult
�� 
ApproveTender
�� )
(
��) *
string
��* 0
tenderid
��1 9
,
��9 :
string
��; A
Approval
��B J
,
��J K
string
��L R
RemarksText
��S ^
)
��^ _
{
�� 	
if
�� 
(
�� 
Session
�� 
[
�� 
$str
�� "
]
��" #
==
��$ &
null
��' +
)
��+ ,
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
$str
��1 :
)
��: ;
;
��; <
}
�� 
db
�� 
.
�� !
update_tenderStatus
�� "
(
��" #
Convert
��# *
.
��* +
ToInt32
��+ 2
(
��2 3
securityUtil
��3 ?
.
��? @
Decode
��@ F
(
��F G
tenderid
��G O
)
��O P
)
��P Q
,
��Q R
Approval
��S [
,
��[ \
Convert
��] d
.
��d e
ToInt32
��e l
(
��l m
Session
��m t
[
��t u
$str
��u 
]�� �
)��� �
,��� �
RemarksText��� �
)��� �
;��� �
try
�� 
{
�� 
if
�� 
(
�� 
Approval
�� 
==
�� 
$str
�� '
)
��' (
{
�� 
int
�� 
client
�� 
=
��  
Convert
��! (
.
��( )
ToInt32
��) 0
(
��0 1
Session
��1 8
[
��8 9
$str
��9 C
]
��C D
)
��D E
;
��E F
string
�� 

Tenderdesc
�� %
=
��% &
string
��& ,
.
��, -
Empty
��- 2
;
��2 3
string
�� 

tenderdate
�� %
=
��% &
string
��& ,
.
��, -
Empty
��- 2
;
��2 3
var
�� 
	buyermail
�� !
=
��" #
(
��$ %
from
��% )
a
��* +
in
��, .
db
��/ 1
.
��1 2
RegisterMasters
��2 A
join
��B F
b
��G H
in
��I K
db
��L N
.
��N O
LoginMasters
��O [
on
��\ ^
a
��_ `
.
��` a

RegisterId
��a k
equals
��l r
b
��s t
.
��t u

RegisterId
��u 
where��� �
b��� �
.��� �
ClientId��� �
==��� �
client��� �
select��� �
a��� �
.��� �
Email��� �
)��� �
.��� �
Single��� �
(��� �
)��� �
;��� �
var
�� 
items
�� 
=
�� 
db
��  
.
��  !
get_tender_detail
��! 2
(
��2 3
Convert
��3 :
.
��: ;
ToInt32
��; B
(
��B C
securityUtil
��C O
.
��O P
Decode
��P V
(
��V W
tenderid
��W _
)
��_ `
)
��` a
,
��a b
Convert
��b i
.
��i j
ToInt32
��j q
(
��q r
Session
��r y
[
��y z
$str��z �
]��� �
)��� �
)��� �
;��� �
foreach
�� 
(
�� 
var
�� 
tender
��  &
in
��' )
items
��* /
)
��/ 0
{
�� 

Tenderdesc
�� "
=
��" #
tender
��# )
.
��) *

Tenderdesc
��* 4
;
��4 5

tenderdate
�� "
=
��" #
tender
��# )
.
��) *
	StartDate
��* 3
+
��3 4
$str
��4 7
+
��7 8
tender
��8 >
.
��> ?
	StartTime
��? H
;
��H I
}
�� 
var
�� 
suplist
�� 
=
��  !
db
��" $
.
��$ %
get_supplierlist
��% 5
(
��5 6
Convert
��6 =
.
��= >
ToInt32
��> E
(
��E F
securityUtil
��F R
.
��R S
Decode
��S Y
(
��Y Z
tenderid
��Z b
)
��b c
)
��c d
)
��d e
.
��e f
ToList
��f l
(
��l m
)
��m n
;
��n o
foreach
�� 
(
�� 
var
��  
item
��! %
in
��& (
suplist
��) 0
)
��0 1
{
�� 
	SendEmail
�� !
(
��! "
item
��" &
.
��& '
ContactPerson
��' 4
.
��4 5
ToString
��5 =
(
��= >
)
��> ?
,
��? @
item
��A E
.
��E F
ClientId
��F N
.
��N O
ToString
��O W
(
��W X
)
��X Y
,
��Y Z

Tenderdesc
��[ e
,
��e f

tenderdate
��g q
,
��q r
item
��s w
.
��w x
Email
��x }
,
��} ~
	buyermail��~ �
)��� �
;��� �
}
�� 
}
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( 9
,
��9 :
$str
��; C
)
��C D
;
��D E
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
�� 
{
�� 
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
CustomAuthorize
��	 
(
�� 
Roles
�� 
=
��  
$str
��! 2
)
��2 3
]
��3 4
public
�� 
ActionResult
�� 
	Purchaser
�� %
(
��% &
string
��& ,
tenderid
��- 5
)
��5 6
{
�� 	
if
�� 
(
�� 
Session
�� 
[
�� 
$str
�� "
]
��" #
==
��$ &
null
��' +
)
��+ ,
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
$str
��1 :
)
��: ;
;
��; <
}
�� 
ViewBag
�� 
.
�� 

BidsDetail
�� 
=
��  
db
��! #
.
��# $
get_Bid_detail
��$ 2
(
��2 3
Convert
��3 :
.
��: ;
ToInt32
��; B
(
��B C
securityUtil
��C O
.
��O P
Decode
��P V
(
��V W
tenderid
��W _
)
��_ `
)
��` a
,
��a b
Convert
��c j
.
��j k
ToInt32
��k r
(
��r s
Session
��s z
[
��z {
$str��{ �
]��� �
)��� �
)��� �
;��� �
ViewBag
�� 
.
�� 

ItemDetail
�� 
=
��  
db
��! #
.
��# $
get_item_detail
��$ 3
(
��3 4
Convert
��4 ;
.
��; <
ToInt32
��< C
(
��C D
securityUtil
��D P
.
��P Q
Decode
��Q W
(
��W X
tenderid
��X `
)
��` a
)
��a b
,
��b c
Convert
��d k
.
��k l
ToInt32
��l s
(
��s t
Session
��t {
[
��{ |
$str��| �
]��� �
)��� �
)��� �
;��� �
ViewBag
�� 
.
�� 
ItemDetails
�� 
=
��  !
db
��" $
.
��$ %
get_item_detail
��% 4
(
��4 5
Convert
��5 <
.
��< =
ToInt32
��= D
(
��D E
securityUtil
��E Q
.
��Q R
Decode
��R X
(
��X Y
tenderid
��Y a
)
��a b
)
��b c
,
��c d
Convert
��e l
.
��l m
ToInt32
��m t
(
��t u
Session
��u |
[
��| }
$str��} �
]��� �
)��� �
)��� �
;��� �
ViewBag
�� 
.
�� 
TenderDetail
��  
=
��! "
db
��# %
.
��% &
get_tender_detail
��& 7
(
��7 8
Convert
��8 ?
.
��? @
ToInt32
��@ G
(
��G H
securityUtil
��H T
.
��T U
Decode
��U [
(
��[ \
tenderid
��\ d
)
��d e
)
��e f
,
��f g
Convert
��h o
.
��o p
ToInt32
��p w
(
��w x
Session
��x 
[�� �
$str��� �
]��� �
)��� �
)��� �
;��� �
ViewBag
�� 
.
�� 
Menu
�� 
=
�� 
db
�� 
.
�� 
get_role
�� &
(
��& '
Convert
��' .
.
��. /
ToInt32
��/ 6
(
��6 7
Session
��7 >
[
��> ?
$str
��? I
]
��I J
)
��J K
)
��K L
;
��L M
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
CustomAuthorize
��	 
(
�� 
Roles
�� 
=
��  
$str
��! 2
)
��2 3
]
��3 4
public
�� 
ActionResult
�� 
	Purchaser
�� %
(
��% &
string
��& ,
tenderid
��- 5
,
��5 6
string
��6 <
minutes
��= D
)
��D E
{
�� 	
if
�� 
(
�� 
Session
�� 
[
�� 
$str
�� "
]
��" #
==
��$ &
null
��' +
)
��+ ,
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
$str
��1 :
)
��: ;
;
��; <
}
�� 
if
�� 
(
�� 
minutes
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
string
�� 
	ipaddress
��  
=
��! "
Request
��# *
.
��* +
UserHostAddress
��+ :
;
��: ;
db
�� 
.
�� 
add_min
�� 
(
�� 
Convert
�� 
.
�� 
ToInt32
�� &
(
��& '
securityUtil
��' 3
.
��3 4
Decode
��4 :
(
��: ;
	@tenderid
��; D
)
��D E
)
��E F
,
��F G
Convert
��H O
.
��O P
ToInt32
��P W
(
��W X
minutes
��X _
)
��_ `
,
��` a
Convert
��a h
.
��h i
ToInt32
��i p
(
��p q
Session
��q x
[
��x y
$str��y �
]��� �
)��� �
,��� �
	ipaddress��� �
)��� �
;��� �
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ /
,
��/ 0
$str
��0 8
,
��8 9
new
��: =
{
��> ?
	@tenderid
��@ I
=
��I J
tenderid
��J R
}
��R S
)
��S T
;
��T U
}
�� 
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
CustomAuthorize
��	 
(
�� 
Roles
�� 
=
��  
$str
��! (
)
��( )
]
��) *
public
�� 
ActionResult
�� 
PendingApproval
�� +
(
��+ ,
)
��, -
{
�� 	
ViewBag
�� 
.
�� 
Menu
�� 
=
�� 
db
�� 
.
�� 
get_role
�� &
(
��& '
Convert
��' .
.
��. /
ToInt32
��/ 6
(
��6 7
Session
��7 >
[
��> ?
$str
��? I
]
��I J
)
��J K
)
��K L
;
��L M
ViewBag
�� 
.
�� 
PendingApproval
�� #
=
��$ %
db
��& (
.
��( )
get_live_auction
��) 9
(
��9 :
Convert
��: A
.
��A B
ToInt32
��B I
(
��I J
Session
��J Q
[
��Q R
$str
��R \
]
��\ ]
)
��] ^
,
��^ _
$str
��` m
)
��m n
;
��n o
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
CustomAuthorize
��	 
(
�� 
Roles
�� 
=
��  
$str
��! )
)
��) *
]
��* +
public
�� 
ActionResult
�� 
Seller
�� "
(
��" #
string
��# )
tenderid
��* 2
,
��2 3
string
��3 9
Eguid
��: ?
)
��? @
{
�� 	
if
�� 
(
�� 
Eguid
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
var
�� 
data
�� 
=
�� 
db
�� 
.
�� 
ValidateGUID
�� *
(
��* +
Eguid
��+ 0
)
��0 1
.
��1 2
ToList
��2 8
(
��8 9
)
��9 :
;
��: ;
int
�� 
count
�� 
=
�� 
data
��  
.
��  !
FirstOrDefault
��! /
(
��/ 0
)
��0 1
.
��1 2
counts
��2 8
.
��8 9
Value
��9 >
;
��> ?
if
�� 
(
�� 
count
�� 
==
�� 
$num
�� 
)
�� 
{
�� 
Session
�� 
[
�� 
$str
�� &
]
��& '
=
��( )
data
��* .
.
��. /
FirstOrDefault
��/ =
(
��= >
)
��> ?
.
��? @
clientid
��@ H
.
��H I
Value
��I N
;
��N O
tenderid
�� 
=
�� 
securityUtil
�� +
.
��+ ,
Encode
��, 2
(
��2 3
Convert
��3 :
.
��: ;
ToString
��; C
(
��C D
data
��E I
.
��I J
FirstOrDefault
��J X
(
��X Y
)
��Y Z
.
��Z [
Tenderid
��[ c
.
��c d
Value
��d i
)
��i j
)
��j k
;
��k l
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 4
,
��4 5
$str
��6 >
,
��> ?
new
��@ C
{
��D E
	@tenderid
��F O
=
��P Q
tenderid
��R Z
}
��[ \
)
��\ ]
;
��] ^
}
�� 
}
�� 
if
�� 
(
�� 
Session
�� 
[
�� 
$str
�� "
]
��" #
==
��$ &
null
��' +
)
��+ ,
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
$str
��1 :
)
��: ;
;
��; <
}
�� 
var
�� 
checkaccept
�� 
=
�� 
db
��  
.
��  !&
check_SupplierAcceptance
��! 9
(
��9 :
Convert
��: A
.
��A B
ToInt32
��B I
(
��I J
securityUtil
��J V
.
��V W
Decode
��W ]
(
��] ^
tenderid
��^ f
)
��f g
)
��g h
,
��h i
Convert
��j q
.
��q r
ToInt32
��r y
(
��y z
Session��z �
[��� �
$str��� �
]��� �
)��� �
)��� �
.��� �
ToList��� �
(��� �
)��� �
.��� �
Single��� �
(��� �
)��� �
.��� �
Value��� �
;��� �
if
�� 
(
�� 
checkaccept
�� 
==
�� 
$num
�� 
)
�� 
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( 4
,
��4 5
$str
��6 >
,
��> ?
new
��@ C
{
��D E
	@tenderid
��F O
=
��P Q
tenderid
��R Z
}
��[ \
)
��\ ]
;
��] ^
}
�� 
ViewBag
�� 
.
�� 

BidsDetail
�� 
=
��  
db
��! #
.
��# $
get_Bid_detail
��$ 2
(
��2 3
Convert
��3 :
.
��: ;
ToInt32
��; B
(
��B C
securityUtil
��C O
.
��O P
Decode
��P V
(
��V W
tenderid
��W _
)
��_ `
)
��` a
,
��a b
Convert
��c j
.
��j k
ToInt32
��k r
(
��r s
Session
��s z
[
��z {
$str��{ �
]��� �
)��� �
)��� �
;��� �
ViewBag
�� 
.
�� 

ItemDetail
�� 
=
��  
db
��! #
.
��# $
get_item_detail
��$ 3
(
��3 4
Convert
��4 ;
.
��; <
ToInt32
��< C
(
��C D
securityUtil
��D P
.
��P Q
Decode
��Q W
(
��W X
tenderid
��X `
)
��` a
)
��a b
,
��b c
Convert
��d k
.
��k l
ToInt32
��l s
(
��s t
Session
��t {
[
��{ |
$str��| �
]��� �
)��� �
)��� �
;��� �
ViewBag
�� 
.
�� 
ItemDetails
�� 
=
��  !
db
��" $
.
��$ %
get_item_detail
��% 4
(
��4 5
Convert
��5 <
.
��< =
ToInt32
��= D
(
��D E
securityUtil
��E Q
.
��Q R
Decode
��R X
(
��X Y
tenderid
��Y a
)
��a b
)
��b c
,
��c d
Convert
��e l
.
��l m
ToInt32
��m t
(
��t u
Session
��u |
[
��| }
$str��} �
]��� �
)��� �
)��� �
;��� �
ViewBag
�� 
.
�� 
TenderDetail
��  
=
��! "
db
��# %
.
��% &
get_tender_detail
��& 7
(
��7 8
Convert
��8 ?
.
��? @
ToInt32
��@ G
(
��G H
securityUtil
��H T
.
��T U
Decode
��U [
(
��[ \
tenderid
��\ d
)
��d e
)
��e f
,
��f g
Convert
��h o
.
��o p
ToInt32
��p w
(
��w x
Session
��x 
[�� �
$str��� �
]��� �
)��� �
)��� �
;��� �
ViewBag
�� 
.
�� 
Menu
�� 
=
�� 
db
�� 
.
�� 
get_role
�� &
(
��& '
Convert
��' .
.
��. /
ToInt32
��/ 6
(
��6 7
Session
��7 >
[
��> ?
$str
��? I
]
��I J
)
��J K
)
��K L
;
��L M
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
public
�� 
ActionResult
�� 
GetOnlineStatus
�� +
(
��+ ,
string
��, 2
tenderid
��3 ;
)
��; <
{
�� 	
List
�� 
<
�� 

UserMaster
�� 
>
�� 
lstTemp
�� $
=
��% &
(
��' (
List
��( ,
<
��, -

UserMaster
��- 7
>
��7 8
)
��8 9
HttpContext
��9 D
.
��D E
Application
��E P
[
��P Q
$str
��Q [
]
��[ \
;
��\ ]
List
�� 
<
�� %
get_supplierlist_Result
�� (
>
��( )
lst
��* -
=
��. /
db
��0 2
.
��2 3
get_supplierlist
��3 C
(
��C D
Convert
��D K
.
��K L
ToInt32
��L S
(
��S T
securityUtil
��T `
.
��` a
Decode
��a g
(
��g h
tenderid
��h p
)
��p q
)
��q r
)
��r s
.
��s t
ToList
��t z
<
��z {&
get_supplierlist_Result��{ �
>��� �
(��� �
)��� �
;��� �
	DataTable
�� 
dt
�� 
=
�� 
new
�� 
	DataTable
�� &
(
��& '
)
��' (
;
��( )
dt
�� 
.
�� 
Columns
�� 
.
�� 
Add
�� 
(
�� 
$str
�� %
,
��% &
typeof
��& ,
(
��, -
string
��- 3
)
��3 4
)
��4 5
;
��5 6
dt
�� 
.
�� 
Columns
�� 
.
�� 
Add
�� 
(
�� 
$str
�� '
,
��' (
typeof
��( .
(
��. /
string
��/ 5
)
��5 6
)
��6 7
;
��7 8
dt
�� 
.
�� 
Columns
�� 
.
�� 
Add
�� 
(
�� 
$str
�� #
,
��# $
typeof
��% +
(
��+ ,
string
��, 2
)
��2 3
)
��3 4
;
��4 5
foreach
�� 
(
�� 
var
�� 
i
�� 
in
�� 
lst
��  
)
��  !
{
�� 
int
�� 
co
�� 
=
�� 
lstTemp
��  
.
��  !
Where
��! &
(
��& '
x
��' (
=>
��) +
x
��, -
.
��- .
LoginId
��. 5
==
��6 8
i
��9 :
.
��: ;
ClientId
��; C
.
��C D
ToString
��D L
(
��L M
)
��M N
&&
��N P
x
��P Q
.
��Q R
	LastLogin
��R [
>=
��[ ]
DateTime
��] e
.
��e f
Now
��f i
.
��i j

AddMinutes
��j t
(
��t u
-
��u v
$num
��v w
)
��w x
)
��x y
.
��y z
Count
��z 
(�� �
)��� �
;��� �
dt
�� 
.
�� 
Rows
�� 
.
�� 
Add
�� 
(
�� 
i
�� 
.
�� 
ClientId
�� &
,
��& '
i
��( )
.
��) *
CompanyName
��* 5
,
��5 6
co
��7 9
)
��9 :
;
��: ;
}
�� 
string
�� 

Jsonstring
�� 
=
�� 
JsonConvert
��  +
.
��+ ,
SerializeObject
��, ;
(
��; <
dt
��< >
)
��> ?
;
��? @
return
�� 
Json
�� 
(
�� 

Jsonstring
�� "
,
��" #!
JsonRequestBehavior
��# 6
.
��6 7
AllowGet
��7 ?
)
��? @
;
��@ A
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
CustomAuthorize
��	 
(
�� 
Roles
�� 
=
��  
$str
��! 9
)
��9 :
]
��: ;
public
�� 
ActionResult
�� 
gettenderdetail
�� +
(
��+ ,
string
��, 2
tenderid
��3 ;
)
��; <
{
�� 	
if
�� 
(
�� 
Session
�� 
[
�� 
$str
�� "
]
��" #
==
��$ &
null
��' +
)
��+ ,
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
$str
��1 :
)
��: ;
;
��; <
}
�� 
var
�� 
tenderdetail
�� 
=
�� 
db
�� !
.
��! "
get_tender_detail
��" 3
(
��3 4
Convert
��4 ;
.
��; <
ToInt32
��< C
(
��C D
securityUtil
��D P
.
��P Q
Decode
��Q W
(
��W X
tenderid
��X `
)
��` a
)
��a b
,
��b c
Convert
��d k
.
��k l
ToInt32
��l s
(
��s t
Session
��t {
[
��{ |
$str��| �
]��� �
)��� �
)��� �
;��� �
return
�� 
Json
�� 
(
�� 
tenderdetail
�� $
,
��$ %!
JsonRequestBehavior
��& 9
.
��9 :
AllowGet
��: B
)
��B C
;
��C D
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
CustomAuthorize
��	 
(
�� 
Roles
�� 
=
��  
$str
��! )
)
��) *
]
��* +
public
�� 
ActionResult
�� 
Seller
�� "
(
��" #
string
��# )
tenderid
��* 2
,
��2 3
String
��4 :
itemid
��; A
,
��A B
int
��C F
?
��F G
Price
��H M
,
��M N
int
��O R
?
��R S
PriceExpected
��T a
,
��a b
string
��b h
RemarksText
��i t
,
��t u
int
��u x
Unit
��y }
)
��} ~
{
�� 	
if
�� 
(
�� 
Session
�� 
[
�� 
$str
�� "
]
��" #
==
��$ &
null
��' +
)
��+ ,
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
$str
��1 :
)
��: ;
;
��; <
}
�� 
var
�� 
	checkrole
�� 
=
�� 
db
�� 
.
�� 
get_role
�� '
(
��' (
Convert
��( /
.
��/ 0
ToInt32
��0 7
(
��7 8
Session
��8 ?
[
��? @
$str
��@ J
]
��J K
)
��K L
)
��L M
.
��M N
ToList
��N T
(
��T U
)
��U V
;
��V W
string
�� 
	ipaddress
�� 
=
�� 
Request
�� &
.
��& '
UserHostAddress
��' 6
;
��6 7
var
�� 
	checktime
�� 
=
�� 
db
�� 
.
�� 
check_tendertime
�� /
(
��/ 0
Convert
��0 7
.
��7 8
ToInt32
��8 ?
(
��? @
securityUtil
��@ L
.
��L M
Decode
��M S
(
��S T
itemid
��T Z
)
��Z [
)
��[ \
,
��\ ]
Convert
��^ e
.
��e f
ToInt32
��f m
(
��m n
Session
��n u
[
��u v
$str��v �
]��� �
)��� �
)��� �
.��� �
ToList��� �
(��� �
)��� �
.��� �
Single��� �
(��� �
)��� �
.��� �
Value��� �
;��� �
if
�� 
(
�� 
	checktime
�� 
==
�� 
$num
�� 
)
�� 
{
�� 
db
�� 
.
�� !
update_tenderStatus
�� &
(
��& '
Convert
��' .
.
��. /
ToInt32
��/ 6
(
��6 7
securityUtil
��7 C
.
��C D
Decode
��D J
(
��J K
tenderid
��K S
)
��S T
)
��T U
,
��U V
$str
��W b
,
��b c
Convert
��d k
.
��k l
ToInt32
��l s
(
��s t
Session
��t {
[
��{ |
$str��| �
]��� �
)��� �
,��� �
RemarksText��� �
)��� �
;��� �
return
�� 
Content
�� 
(
�� 
$str�� �
)��� �
;��� �
}
�� 
if
�� 
(
�� 
Price
�� 
==
�� 
null
�� 
)
�� 
{
�� 
var
�� 
	checkflag
�� 
=
�� 
db
��  "
.
��" #
Add_Bid
��# *
(
��* +
Convert
��+ 2
.
��2 3
ToInt32
��3 :
(
��: ;
securityUtil
��; G
.
��G H
Decode
��H N
(
��N O
itemid
��O U
)
��U V
)
��V W
,
��W X
Convert
��Y `
.
��` a
ToInt32
��a h
(
��h i
Session
��i p
[
��p q
$str
��q {
]
��{ |
)
��| }
,
��} ~
PriceExpected�� �
,��� �
	ipaddress��� �
,��� �
Unit��� �
)��� �
.��� �
ToList��� �
(��� �
)��� �
.��� �
Single��� �
(��� �
)��� �
.��� �
Value��� �
;��� �
if
�� 
(
�� 
	checkflag
�� 
==
�� 
$num
�� 
)
��  
{
�� 
return
�� 
Content
�� "
(
��" #
$str��# �
+��� �
tenderid��� �
+��� �
$str��� �
)��� �
;��� �
}
�� 
else
�� 
{
�� 
return
�� 
Content
�� "
(
��" #
$str��# �
+��� �
tenderid��� �
+��� �
$str��� �
)��� �
;��� �
}
�� 
}
�� 
else
�� 
{
�� 
db
�� 
.
�� 
Add_Bid
�� 
(
�� 
Convert
�� "
.
��" #
ToInt32
��# *
(
��* +
securityUtil
��+ 7
.
��7 8
Decode
��8 >
(
��> ?
itemid
��? E
)
��E F
)
��F G
,
��G H
Convert
��I P
.
��P Q
ToInt32
��Q X
(
��X Y
Session
��Y `
[
��` a
$str
��a k
]
��k l
)
��l m
,
��m n
Price
��o t
,
��t u
	ipaddress
��u ~
,
��~ 
Unit�� �
)��� �
;��� �
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ ,
,
��, -
$str
��. 6
,
��6 7
new
��8 ;
{
��< =
	@tenderid
��> G
=
��H I
tenderid
��J R
}
��S T
)
��T U
;
��U V
ViewBag
�� 
.
�� 

BidsDetail
�� 
=
��  
db
��! #
.
��# $
get_Bid_detail
��$ 2
(
��2 3
Convert
��3 :
.
��: ;
ToInt32
��; B
(
��B C
securityUtil
��C O
.
��O P
Decode
��P V
(
��V W
tenderid
��X `
)
��` a
)
��a b
,
��b c
Convert
��d k
.
��k l
ToInt32
��l s
(
��s t
Session
��t {
[
��{ |
$str��| �
]��� �
)��� �
)��� �
;��� �
ViewBag
�� 
.
�� 

ItemDetail
�� 
=
��  
db
��! #
.
��# $
get_item_detail
��$ 3
(
��3 4
Convert
��4 ;
.
��; <
ToInt32
��< C
(
��C D
securityUtil
��D P
.
��P Q
Decode
��Q W
(
��W X
tenderid
��X `
)
��` a
)
��a b
,
��b c
Convert
��d k
.
��k l
ToInt32
��l s
(
��s t
Session
��t {
[
��{ |
$str��| �
]��� �
)��� �
)��� �
;��� �
ViewBag
�� 
.
�� 
ItemDetails
�� 
=
��  !
db
��" $
.
��$ %
get_item_detail
��% 4
(
��4 5
Convert
��5 <
.
��< =
ToInt32
��= D
(
��D E
securityUtil
��E Q
.
��Q R
Decode
��R X
(
��X Y
tenderid
��Y a
)
��a b
)
��b c
,
��c d
Convert
��e l
.
��l m
ToInt32
��m t
(
��t u
Session
��u |
[
��| }
$str��} �
]��� �
)��� �
)��� �
;��� �
ViewBag
�� 
.
�� 
TenderDetail
��  
=
��! "
db
��# %
.
��% &
get_tender_detail
��& 7
(
��7 8
Convert
��8 ?
.
��? @
ToInt32
��@ G
(
��G H
securityUtil
��H T
.
��T U
Decode
��U [
(
��[ \
tenderid
��\ d
)
��d e
)
��e f
,
��f g
Convert
��h o
.
��o p
ToInt32
��p w
(
��w x
Session
��x 
[�� �
$str��� �
]��� �
)��� �
)��� �
;��� �
ViewBag
�� 
.
�� 
Menu
�� 
=
�� 
db
�� 
.
�� 
get_role
�� &
(
��& '
Convert
��' .
.
��. /
ToInt32
��/ 6
(
��6 7
Session
��7 >
[
��> ?
$str
��? I
]
��I J
)
��J K
)
��K L
;
��L M
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
public
�� 
ActionResult
�� 
Download
�� $
(
��$ %
string
��% +
tenderid
��, 4
)
��4 5
{
�� 	
try
�� 
{
�� 
string
�� 
files
�� 
=
�� 
db
�� !
.
��! "
get_tender_detail
��" 3
(
��3 4
Convert
��4 ;
.
��; <
ToInt32
��< C
(
��C D
securityUtil
��D P
.
��P Q
Decode
��Q W
(
��W X
tenderid
��X `
)
��` a
)
��a b
,
��b c
Convert
��d k
.
��k l
ToInt32
��l s
(
��s t
Session
��t {
[
��{ |
$str��| �
]��� �
)��� �
)��� �
.��� �
ToList��� �
(��� �
)��� �
.��� �
FirstOrDefault��� �
(��� �
)��� �
.��� �

Attachment��� �
;��� �
var
�� 
filepath
�� 
=
�� 
System
�� %
.
��% &
IO
��& (
.
��( )
Path
��) -
.
��- .
Combine
��. 5
(
��5 6
Server
��6 <
.
��< =
MapPath
��= D
(
��D E
$str
��E P
)
��P Q
,
��Q R
files
��S X
)
��X Y
;
��Y Z
return
�� 
File
�� 
(
�� 
filepath
�� $
,
��$ %
MimeMapping
��& 1
.
��1 2
GetMimeMapping
��2 @
(
��@ A
files
��A F
)
��F G
,
��G H
files
��I N
)
��N O
;
��O P
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
�� 
{
�� 
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
CustomAuthorize
��	 
(
�� 
Roles
�� 
=
��  
$str
��! )
)
��) *
]
��* +
public
�� 
ActionResult
�� 

Disclaimer
�� &
(
��& '
string
��' -
tenderid
��. 6
)
��6 7
{
�� 	
if
�� 
(
�� 
Session
�� 
[
�� 
$str
�� "
]
��" #
==
��$ &
null
��' +
)
��+ ,
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
$str
��1 :
)
��: ;
;
��; <
}
�� 
ViewBag
�� 
.
�� 
termsconditions
�� #
=
��$ %
db
��& (
.
��( )
GetTerms
��) 1
(
��1 2
Convert
��2 9
.
��9 :
ToInt32
��: A
(
��A B
securityUtil
��B N
.
��N O
Decode
��O U
(
��U V
tenderid
��V ^
)
��^ _
)
��_ `
)
��` a
;
��a b
ViewBag
�� 
.
�� 
Menu
�� 
=
�� 
db
�� 
.
�� 
get_role
�� &
(
��& '
Convert
��' .
.
��. /
ToInt32
��/ 6
(
��6 7
Session
��7 >
[
��> ?
$str
��? I
]
��I J
)
��J K
)
��K L
;
��L M
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
CustomAuthorize
��	 
(
�� 
Roles
�� 
=
��  
$str
��! )
)
��) *
]
��* +
public
�� 
ActionResult
�� 

Disclaimer
�� &
(
��& '
string
��' -
tenderid
��. 6
,
��6 7
string
��7 =

Acceptance
��> H
)
��H I
{
�� 	
if
�� 
(
�� 
Session
�� 
[
�� 
$str
�� "
]
��" #
==
��$ &
null
��' +
)
��+ ,
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
$str
��1 :
)
��: ;
;
��; <
}
�� 
ViewBag
�� 
.
�� 
Menu
�� 
=
�� 
db
�� 
.
�� 
get_role
�� &
(
��& '
Convert
��' .
.
��. /
ToInt32
��/ 6
(
��6 7
Session
��7 >
[
��> ?
$str
��? I
]
��I J
)
��J K
)
��K L
;
��L M
var
�� 
checkaccept
�� 
=
�� 
db
��  
.
��  !&
check_SupplierAcceptance
��! 9
(
��9 :
Convert
��: A
.
��A B
ToInt32
��B I
(
��I J
securityUtil
��J V
.
��V W
Decode
��W ]
(
��] ^
tenderid
��^ f
)
��f g
)
��g h
,
��h i
Convert
��j q
.
��q r
ToInt32
��r y
(
��y z
Session��z �
[��� �
$str��� �
]��� �
)��� �
)��� �
.��� �
ToList��� �
(��� �
)��� �
.��� �
Single��� �
(��� �
)��� �
.��� �
Value��� �
;��� �
if
�� 
(
�� 
checkaccept
�� 
==
�� 
$num
�� 
)
�� 
{
�� 
db
�� 
.
�� '
update_SupplierAcceptance
�� (
(
��( )
Convert
��) 0
.
��0 1
ToInt32
��1 8
(
��8 9
securityUtil
��9 E
.
��E F
Decode
��F L
(
��L M
tenderid
��M U
)
��U V
)
��V W
,
��W X

Acceptance
��Y c
,
��c d
Convert
��e l
.
��l m
ToInt32
��m t
(
��t u
Session
��u |
[
��| }
$str��} �
]��� �
)��� �
)��� �
;��� �
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ ,
,
��, -
$str
��. 6
,
��6 7
new
��8 ;
{
��< =
	@tenderid
��> G
=
��H I
tenderid
��J R
}
��S T
)
��T U
;
��U V
}
�� 
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
ActionResult
�� 

getbiddata
�� &
(
��& '
string
��' -
itemid
��. 4
,
��4 5
string
��5 ;
tenderid
��< D
,
��D E
int
��E H
price
��I N
,
��N O
int
��O R
unit
��S W
)
��W X
{
�� 	
var
�� 
bids
�� 
=
�� 
db
�� 
.
��  
get_ReduceBidPrice
�� ,
(
��, -
Convert
��- 4
.
��4 5
ToInt32
��5 <
(
��< =
securityUtil
��= I
.
��I J
Decode
��J P
(
��P Q
itemid
��R X
)
��X Y
)
��Y Z
,
��Z [
price
��[ `
,
��` a
unit
��a e
)
��e f
;
��f g
return
�� 
Json
�� 
(
�� 
bids
�� 
,
�� !
JsonRequestBehavior
�� 0
.
��0 1
AllowGet
��1 9
)
��9 :
;
��: ;
}
�� 	
public
�� 
ActionResult
�� 
getitems
�� $
(
��$ %
string
��% +
tenderid
��, 4
)
��4 5
{
�� 	
if
�� 
(
�� 
Session
�� 
[
�� 
$str
�� "
]
��" #
==
��$ &
null
��' +
)
��+ ,
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
$str
��1 :
)
��: ;
;
��; <
}
�� 
try
�� 
{
�� 
var
�� 
itemlist
�� 
=
�� 
db
�� !
.
��! "
get_item_detail
��" 1
(
��1 2
Convert
��2 9
.
��9 :
ToInt32
��: A
(
��A B
securityUtil
��B N
.
��N O
Decode
��O U
(
��U V
tenderid
��V ^
)
��^ _
)
��_ `
,
��` a
Convert
��b i
.
��i j
ToInt32
��j q
(
��q r
Session
��r y
[
��y z
$str��z �
]��� �
)��� �
)��� �
;��� �
return
�� 
Json
�� 
(
�� 
itemlist
�� $
,
��$ %!
JsonRequestBehavior
��& 9
.
��9 :
AllowGet
��: B
)
��B C
;
��C D
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
�� 
{
�� 
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
public
�� 
ActionResult
�� 
Edititem
�� $
(
��$ %
string
��% +
itemid
��, 2
)
��2 3
{
�� 	
ViewBag
�� 
.
�� 
Menu
�� 
=
�� 
db
�� 
.
�� 
get_role
�� &
(
��& '
Convert
��' .
.
��. /
ToInt32
��/ 6
(
��6 7
Session
��7 >
[
��> ?
$str
��? I
]
��I J
)
��J K
)
��K L
;
��L M
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
ActionResult
�� 
Edititem
�� $
(
��$ %
)
��% &
{
�� 	
ViewBag
�� 
.
�� 
Menu
�� 
=
�� 
db
�� 
.
�� 
get_role
�� &
(
��& '
Convert
��' .
.
��. /
ToInt32
��/ 6
(
��6 7
Session
��7 >
[
��> ?
$str
��? I
]
��I J
)
��J K
)
��K L
;
��L M
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
CustomAuthorize
��	 
(
�� 
Roles
�� 
=
��  
$str
��! 9
)
��9 :
]
��: ;
public
�� 

JsonResult
�� 
	getnotify
�� #
(
��# $
string
��$ *
tenderid
��+ 3
)
��3 4
{
�� 	
var
�� 
notify
�� 
=
�� 
db
�� 
.
�� 

get_notify
�� &
(
��& '
Convert
��' .
.
��. /
ToInt32
��/ 6
(
��6 7
securityUtil
��7 C
.
��C D
Decode
��D J
(
��J K
tenderid
��K S
)
��S T
)
��T U
,
��U V
Convert
��W ^
.
��^ _
ToInt32
��_ f
(
��f g
Session
��g n
[
��n o
$str
��o y
]
��y z
)
��z {
)
��{ |
;
��| }
return
�� 
Json
�� 
(
�� 
notify
�� 
,
�� !
JsonRequestBehavior
��  3
.
��3 4
AllowGet
��4 <
)
��< =
;
��= >
}
�� 	
public
�� 
ActionResult
�� 
updateTender
�� (
(
��( )
string
��) /
tenderid
��0 8
)
��8 9
{
�� 	
if
�� 
(
�� 
Session
�� 
[
�� 
$str
�� "
]
��" #
==
��$ &
null
��' +
)
��+ ,
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
$str
��1 :
)
��: ;
;
��; <
}
�� 
db
�� 
.
�� !
update_tenderStatus
�� "
(
��" #
Convert
��# *
.
��* +
ToInt32
��+ 2
(
��2 3
securityUtil
��3 ?
.
��? @
Decode
��@ F
(
��F G
tenderid
��G O
)
��O P
)
��P Q
,
��Q R
$str
��S ^
,
��^ _
Convert
��` g
.
��g h
ToInt32
��h o
(
��o p
Session
��p w
[
��w x
$str��x �
]��� �
)��� �
,��� �
$str��� �
)��� �
;��� �
return
�� 
Content
�� 
(
�� 
$str�� �
)��� �
;��� �
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
public
�� 
ActionResult
�� 
Report
�� "
(
��" #
string
��# )
tenderid
��* 2
)
��2 3
{
�� 	
if
�� 
(
�� 
Session
�� 
[
�� 
$str
�� "
]
��" #
==
��$ &
null
��' +
)
��+ ,
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
$str
��1 :
)
��: ;
;
��; <
}
�� 
ViewBag
�� 
.
�� 

reportitem
�� 
=
�� 
db
�� !
.
��! "$
tenderitemreport_print
��" 8
(
��8 9
Convert
��9 @
.
��@ A
ToInt32
��A H
(
��H I
securityUtil
��I U
.
��U V
Decode
��V \
(
��\ ]
tenderid
��] e
)
��e f
)
��f g
)
��g h
.
��h i
ToList
��i o
(
��o p
)
��p q
;
��q r
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
CustomAuthorize
��	 
(
�� 
Roles
�� 
=
��  
$str
��! 2
)
��2 3
]
��3 4
public
�� 
ActionResult
�� 
Terms
�� !
(
��! "
string
��" (
tenderid
��) 1
)
��1 2
{
�� 	
if
�� 
(
�� 
Session
�� 
[
�� 
$str
�� "
]
��" #
==
��$ &
null
��' +
)
��+ ,
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
$str
��1 :
)
��: ;
;
��; <
}
�� 
ViewBag
�� 
.
�� 
Menu
�� 
=
�� 
db
�� 
.
�� 
get_role
�� &
(
��& '
Convert
��' .
.
��. /
ToInt32
��/ 6
(
��6 7
Session
��7 >
[
��> ?
$str
��? I
]
��I J
)
��J K
)
��K L
;
��L M
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
ValidateInput
��	 
(
�� 
false
�� 
)
�� 
]
�� 
public
�� 
ActionResult
�� 
Terms
�� !
(
��! "
string
��" (
tenderid
��) 1
,
��1 2
string
��2 8
ck
��9 ;
)
��; <
{
�� 	
db
�� 
.
�� 
AddTerms
�� 
(
�� 
Convert
�� 
.
��  
ToInt32
��  '
(
��' (
securityUtil
��( 4
.
��4 5
Decode
��5 ;
(
��; <
tenderid
��= E
)
��E F
)
��F G
,
��G H
ck
��I K
)
��K L
;
��L M
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ .
,
��. /
$str
��0 <
,
��< =
new
��> A
{
��B C
	@tenderid
��D M
=
��N O
tenderid
��P X
}
��Y Z
)
��Z [
;
��[ \
ViewBag
�� 
.
�� 
Menu
�� 
=
�� 
db
�� 
.
�� 
get_role
�� &
(
��& '
Convert
��' .
.
��. /
ToInt32
��/ 6
(
��6 7
Session
��7 >
[
��> ?
$str
��? I
]
��I J
)
��J K
)
��K L
;
��L M
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
	SendEmail
�� 
(
�� 
string
�� $
ContactPerson
��% 2
,
��2 3
string
��3 9
Clientid
��: B
,
��B C
string
��C I

TenderDesc
��J T
,
��T U
string
��U [
Datetime
��\ d
,
��d e
string
��e k
Email
��l q
,
��q r
string
��r x
ccmail
��y 
)�� �
{
�� 	
string
�� 
subject
�� 
=
�� 
string
�� #
.
��# $
Empty
��$ )
;
��) *
string
�� 
mailbody
�� 
=
�� 
string
�� $
.
��$ %
Empty
��% *
;
��* +
StringBuilder
�� 
Body
�� 
=
��  
new
��! $
StringBuilder
��% 2
(
��2 3
$str��3 �
)��� �
;��� �
Body
�� 
.
�� 
Append
�� 
(
�� 
$str
�� 
)
�� 
;
��  
Body
�� 
.
�� 
Append
�� 
(
�� 
$str
�� @
)
��@ A
;
��A B
Body
�� 
.
�� 
Append
�� 
(
�� 
$str
�� X
)
��X Y
;
��Y Z
Body
�� 
.
�� 
Append
�� 
(
�� 
$str�� �
)��� �
;��� �
Body
�� 
.
�� 
Append
�� 
(
�� 
$str
�� 2
)
��2 3
;
��3 4
Body
�� 
.
�� 
Append
�� 
(
�� 
$str�� �
+��� �
ContactPerson��� �
+��� �
$str��� �
)��� �
;��� �
Body
�� 
.
�� 
Append
�� 
(
�� 
$str
�� 2
)
��2 3
;
��3 4
Body
�� 
.
�� 
Append
�� 
(
�� 
$str�� �
)��� �
;��� �
Body
�� 
.
�� 
Append
�� 
(
�� 
$str
�� z
)
��z {
;
��{ |
if
�� 
(
�� 
Clientid
�� 
!=
�� 
$str
�� 
)
�� 
{
�� 
Body
�� 
.
�� 
Append
�� 
(
�� 
$str
�� "
)
��" #
;
��# $
Body
�� 
.
�� 
Append
�� 
(
�� 
$str�� �
)��� �
;��� �
Body
�� 
.
�� 
Append
�� 
(
�� 
$str�� �
+��� �
Clientid��� �
+��� �
$str��� �
)��� �
;��� �
Body
�� 
.
�� 
Append
�� 
(
�� 
$str
�� #
)
��# $
;
��$ %
}
�� 
if
�� 
(
�� 

TenderDesc
�� 
!=
�� 
$str
��  
)
��  !
{
�� 
Body
�� 
.
�� 
Append
�� 
(
�� 
$str
�� "
)
��" #
;
��# $
Body
�� 
.
�� 
Append
�� 
(
�� 
$str�� �
)��� �
;��� �
Body
�� 
.
�� 
Append
�� 
(
�� 
$str�� �
+��� �

TenderDesc��� �
+��� �
$str��� �
)��� �
;��� �
Body
�� 
.
�� 
Append
�� 
(
�� 
$str
�� #
)
��# $
;
��$ %
}
�� 
if
�� 
(
�� 
Datetime
�� 
!=
�� 
$str
�� 
)
�� 
{
�� 
Body
�� 
.
�� 
Append
�� 
(
�� 
$str
�� "
)
��" #
;
��# $
Body
�� 
.
�� 
Append
�� 
(
�� 
$str�� �
)��� �
;��� �
Body
�� 
.
�� 
Append
�� 
(
�� 
$str�� �
+��� �
Datetime��� �
+��� �
$str��� �
)��� �
;��� �
Body
�� 
.
�� 
Append
�� 
(
�� 
$str
�� #
)
��# $
;
��$ %
}
�� 
string
�� 
Website
�� 
=
�� 
$str
�� ?
;
��? @
Body
�� 
.
�� 
Append
�� 
(
�� 
$str
�� "
)
��" #
;
��# $
Body
�� 
.
�� 
Append
�� 
(
�� 
$str�� �
)��� �
;��� �
Body
�� 
.
�� 
Append
�� 
(
�� 
$str�� �
+��� �
Website��� �
+��� �
$str��� �
)��� �
;��� �
Body
�� 
.
�� 
Append
�� 
(
�� 
$str
�� #
)
��# $
;
��$ %
Body
�� 
.
�� 
Append
�� 
(
�� 
$str�� �
)��� �
;��� �
Body
�� 
.
�� 
Append
�� 
(
�� 
$str
�� >
)
��> ?
;
��? @
Body
�� 
.
�� 
Append
�� 
(
�� 
$str�� �
)��� �
;��� �
Body
�� 
.
�� 
Append
�� 
(
�� 
$str
�� >
)
��> ?
;
��? @
Body
�� 
.
�� 
Append
�� 
(
�� 
$str
�� ,
)
��, -
;
��- .
Body
�� 
.
�� 
Append
�� 
(
�� 
$str
�� "
)
��" #
;
��# $
Body
�� 
.
�� 
Append
�� 
(
�� 
$str
�� 
)
��  
;
��  !
Body
�� 
.
�� 
Append
�� 
(
�� 
$str
�� 
)
��  
;
��  !
Body
�� 
.
�� 
Append
�� 
(
�� 
$str
�� "
)
��" #
;
��# $
subject
�� 
=
�� 
$str
�� !
;
��! "
	clsCommon
�� 
.
�� 
SendMail
�� 
(
�� 
Email
�� $
,
��$ %
Body
��& *
.
��* +
ToString
��+ 3
(
��3 4
)
��4 5
,
��5 6
subject
��7 >
,
��> ?
ccmail
��? E
)
��E F
;
��F G
}
�� 	
}
�� 
}�� ��
rC:\Users\tasmiya.sana\Desktop\clone\ebex_pr_trans-master\Ebid\Source\e-auction\Controllers\TenderItemController.cs
	namespace 	
	e_auction
 
. 
Controllers 
{ 
public 

class  
TenderItemController %
:& '

Controller( 2
{ 
private 
Entities 
db 
= 
new !
Entities" *
(* +
)+ ,
;, -
public 
ActionResult 
Details #
(# $
int$ '
?' (
id) +
)+ ,
{ 	
if 
( 
id 
== 
null 
) 
{ 
return 
new  
HttpStatusCodeResult /
(/ 0
HttpStatusCode0 >
.> ?

BadRequest? I
)I J
;J K
} 

TenderItem 

tenderitem !
=" #
db$ &
.& '
TenderItems' 2
.2 3
Find3 7
(7 8
id8 :
): ;
;; <
if 
( 

tenderitem 
== 
null "
)" #
{ 
return 
HttpNotFound #
(# $
)$ %
;% &
} 
return 
View 
( 

tenderitem "
)" #
;# $
}   	
[## 	
CustomAuthorize##	 
(## 
Roles## 
=##  
$str##! 2
)##2 3
]##3 4
public$$ 
ActionResult$$ 
Additems$$ $
($$$ %
string$$% +
tenderid$$, 4
)$$4 5
{%% 	
if&& 
(&& 
Session&& 
[&& 
$str&& "
]&&" #
==&&$ &
null&&' +
)&&+ ,
{'' 
return(( 
RedirectToAction(( '
(((' (
$str((( /
,((/ 0
$str((1 :
)((: ;
;((; <
})) 

ModelState** 
.** 
Clear** 
(** 
)** 
;** 
if++ 
(++ 
tenderid++ 
==++ 
null++  
)++  !
{,, 
return-- 
RedirectToAction-- &
(--& '
$str--' 2
,--2 3
$str--4 <
)--< =
;--= >
}.. 
ViewBag// 
.// 
BidMethodbag//  
=//! "
new//# &

SelectList//' 1
(//1 2
db//2 4
.//4 5
BidMethodMasters//5 E
,//E F
$str//G Q
,//Q R
$str//S _
)//_ `
;//` a
ViewBag00 
.00 
ItemCategorybag00 #
=00$ %
new00& )

SelectList00* 4
(004 5
db005 7
.007 8
CategoryMasters008 G
,00G H
$str00I U
,00U V
$str00W e
)00e f
;00f g
ViewBag11 
.11 
Currencybag11 
=11  !
new11" %

SelectList11& 0
(110 1
db111 3
.113 4
CurrencyMasters114 C
,11C D
$str11E Q
,11Q R
$str11S ]
)11] ^
;11^ _
ViewBag22 
.22 
ItemTypebag22 
=22  !
new22" %

SelectList22& 0
(220 1
db221 3
.223 4
ItemTypeMasters224 C
,22C D
$str22E M
,22M N
$str22O Y
)22Y Z
;22Z [
ViewBag33 
.33 
Tenderidbag33 
=33  !
new33" %

SelectList33& 0
(330 1
db331 3
.333 4
Tenders334 ;
,33; <
$str33= G
,33G H
$str33I U
)33U V
;33V W
ViewBag44 
.44 
UOMbag44 
=44 
new44  

SelectList44! +
(44+ ,
db44, .
.44. /

UOMMasters44/ 9
,449 :
$str44; B
,44B C
$str44D I
)44I J
;44J K
ViewBag55 
.55 
itemlistbag55 
=55  !
db55" $
.55$ %
getitemslist55% 1
(551 2
Convert552 9
.559 :
ToInt3255: A
(55A B
securityUtil55B N
.55N O
Decode55O U
(55U V
tenderid55V ^
)55^ _
)55_ `
)55` a
.55a b
ToList55b h
(55h i
)55i j
;55j k
ViewBag66 
.66 
Menu66 
=66 
db66 
.66 
get_role66 &
(66& '
Convert66' .
.66. /
ToInt3266/ 6
(666 7
Session667 >
[66> ?
$str66? I
]66I J
)66J K
)66K L
;66L M
return77 
View77 
(77 
)77 
;77 
}88 	
[99 	
HttpGet99	 
]99 
public:: 
ActionResult:: 
Next::  
(::  !
string::! '
tenderid::( 0
)::0 1
{;; 	
if<< 
(<< 
Session<< 
[<< 
$str<< "
]<<" #
==<<$ &
null<<' +
)<<+ ,
{== 
return>> 
RedirectToAction>> '
(>>' (
$str>>( /
,>>/ 0
$str>>1 :
)>>: ;
;>>; <
}?? 
intAA 
idAA 
=AA 
ConvertAA 
.AA 
ToInt32AA "
(AA" #
securityUtilAA# /
.AA/ 0
DecodeAA0 6
(AA6 7
tenderidAA7 ?
)AA? @
)AA@ A
;AAA B
intBB 
valBB 
=BB 
dbBB 
.BB 
TenderItemsBB $
.BB$ %
WhereBB% *
(BB* +
mBB+ ,
=>BB- /
mBB0 1
.BB1 2
TenderidBB2 :
==BB; =
idBB> @
)BB@ A
.BBA B
CountBBB G
(BBG H
)BBH I
;BBI J
ifCC 
(CC 
valCC 
>CC 
$numCC 
)CC 
{DD 
returnEE 
RedirectToActionEE '
(EE' (
$strEE( 2
,EE2 3
$strEE4 A
,EEA B
newEEC F
{EEG H
	@tenderidEEI R
=EES T
tenderidEEU ]
}EE^ _
)EE_ `
;EE` a
}FF 
elseGG 
{HH 
returnII 
ContentII 
(II 
$str	II �
+
II� �
tenderid
II� �
+
II� �
$str
II� �
)
II� �
;
II� �
}KK 
}MM 	
publicSS 
ActionResultSS 
DeleteSS "
(SS" #
stringSS# )
itemidSS* 0
,SS0 1
stringSS1 7
tenderidSS8 @
)SS@ A
{TT 	
ifUU 
(UU 
SessionUU 
[UU 
$strUU "
]UU" #
==UU$ &
nullUU' +
)UU+ ,
{VV 
returnWW 
RedirectToActionWW '
(WW' (
$strWW( /
,WW/ 0
$strWW1 :
)WW: ;
;WW; <
}XX 
tryYY 
{ZZ 
db[[ 
.[[ 
Delete_Item[[ 
([[ 
Convert[[ "
.[[" #
ToInt32[[# *
([[* +
securityUtil[[+ 7
.[[7 8
Decode[[8 >
([[> ?
itemid[[? E
)[[E F
)[[F G
)[[G H
;[[H I
return\\ 
RedirectToAction\\ #
(\\# $
$str\\$ .
,\\. /
$str\\0 <
,\\< =
new\\> A
{\\B C
	@tenderid\\D M
=\\N O
tenderid\\P X
}\\X Y
)\\Y Z
;\\Z [
}]] 
catch^^ 
{__ 
return`` 
RedirectToAction`` '
(``' (
$str``( 2
,``2 3
$str``4 @
,``@ A
new``B E
{``F G
	@tenderid``H Q
=``R S
tenderid``T \
}``] ^
)``^ _
;``_ `
}aa 
}bb 	
[cc 	
HttpPostcc	 
]cc 
[dd 	$
ValidateAntiForgeryTokendd	 !
]dd! "
[ee 	
CustomAuthorizeee	 
(ee 
Rolesee 
=ee  
$stree! 2
)ee2 3
]ee3 4
publicff 
ActionResultff 
AddItemsff $
(ff$ %

TenderItemff% /

tenderitemff0 :
,ff: ;
stringff; A
tenderidffB J
,ffJ K
stringffL R
nameffS W
)ffW X
{gg 	
ifhh 
(hh 
Sessionhh 
[hh 
$strhh "
]hh" #
==hh$ &
nullhh' +
)hh+ ,
{ii 
returnjj 
RedirectToActionjj '
(jj' (
$strjj( /
,jj/ 0
$strjj1 :
)jj: ;
;jj; <
}kk 
trymm 
{nn 
dboo 
.oo 
	save_itemoo 
(oo 
nulloo !
,oo! "
Convertoo" )
.oo) *
ToInt32oo* 1
(oo1 2
securityUtiloo2 >
.oo> ?
Decodeoo? E
(ooE F
tenderidooF N
)ooN O
)ooO P
,ooP Q

tenderitemooR \
.oo\ ]
ItemTypeoo] e
,ooe f

tenderitemoog q
.ooq r
ItemNameoor z
,ooz {

tenderitem	oo| �
.
oo� �
ItemDesc
oo� �
,
oo� �

tenderitem
oo� �
.
oo� �
ItemCategory
oo� �
,
oo� �

tenderitem
oo� �
.
oo� �
Location
oo� �
,
oo� �

tenderitem
oo� �
.
oo� �
Quantity
oo� �
,
oo� �

tenderitem
oo� �
.
oo� �
UOM
oo� �
,
oo� �

tenderitem
oo� �
.
oo� �
Price
oo� �
,
oo� �

tenderitem
oo� �
.
oo� �
Currency
oo� �
,
oo� �

tenderitem
oo� �
.
oo� �
	BidMethod
oo� �
,
oo� �

tenderitem
oo� �
.
oo� �
ReducePerBid
oo� �
,
oo� �

tenderitem
oo� �
.
oo� �
Remarks
oo� �
)
oo� �
;
oo� �
}pp 
catchqq 
{rr 
}tt 
ViewBagvv 
.vv 
BidMethodbagvv  
=vv! "
newvv# &

SelectListvv' 1
(vv1 2
dbvv2 4
.vv4 5
BidMethodMastersvv5 E
,vvE F
$strvvG Q
,vvQ R
$strvvS _
,vv_ `

tenderitemvva k
.vvk l
	BidMethodvvl u
)vvu v
;vvv w
ViewBagww 
.ww 
ItemCategorybagww #
=ww$ %
newww& )

SelectListww* 4
(ww4 5
dbww5 7
.ww7 8
CategoryMastersww8 G
,wwG H
$strwwI U
,wwU V
$strwwW e
,wwe f

tenderitemwwg q
.wwq r
ItemCategorywwr ~
)ww~ 
;	ww �
ViewBagxx 
.xx 
Currencybagxx 
=xx  !
newxx" %

SelectListxx& 0
(xx0 1
dbxx1 3
.xx3 4
CurrencyMastersxx4 C
,xxC D
$strxxE Q
,xxQ R
$strxxS ]
,xx] ^

tenderitemxx_ i
.xxi j
Currencyxxj r
)xxr s
;xxs t
ViewBagyy 
.yy 
ItemTypebagyy 
=yy  !
newyy" %

SelectListyy& 0
(yy0 1
dbyy1 3
.yy3 4
ItemTypeMastersyy4 C
,yyC D
$stryyE M
,yyM N
$stryyO Y
,yyY Z

tenderitemyy[ e
.yye f
ItemTypeyyf n
)yyn o
;yyo p
ViewBagzz 
.zz 
Tenderidbagzz 
=zz  !
newzz" %

SelectListzz& 0
(zz0 1
dbzz1 3
.zz3 4
Tenderszz4 ;
,zz; <
$strzz= G
,zzG H
$strzzI U
,zzU V

tenderitemzzW a
.zza b
Tenderidzzb j
)zzj k
;zzk l
ViewBag{{ 
.{{ 
UOMbag{{ 
={{ 
new{{  

SelectList{{! +
({{+ ,
db{{, .
.{{. /

UOMMasters{{/ 9
,{{9 :
$str{{; B
,{{B C
$str{{D I
,{{I J

tenderitem{{K U
.{{U V
UOM{{V Y
){{Y Z
;{{Z [
ViewBag|| 
.|| 
itemlistbag|| 
=||  !
db||" $
.||$ %
getitemslist||% 1
(||1 2
Convert||2 9
.||9 :
ToInt32||: A
(||A B
securityUtil||B N
.||N O
Decode||O U
(||U V
tenderid||V ^
)||^ _
)||_ `
)||` a
.||a b
ToList||b h
(||h i
)||i j
;||j k
ViewBag}} 
.}} 
Menu}} 
=}} 
db}} 
.}} 
get_role}} &
(}}& '
Convert}}' .
.}}. /
ToInt32}}/ 6
(}}6 7
Session}}7 >
[}}> ?
$str}}? I
]}}I J
)}}J K
)}}K L
;}}L M
return~~ 
RedirectToAction~~ #
(~~# $
$str~~$ .
,~~. /
$str~~0 <
,~~< =
new~~> A
{~~B C
	@tenderid~~D M
=~~M N
tenderid~~N V
}~~W X
)~~X Y
;~~Y Z
} 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
CustomAuthorize
��	 
(
�� 
Roles
�� 
=
��  
$str
��! 2
)
��2 3
]
��3 4
public
�� 
ActionResult
�� 
Edit
��  
(
��  !

TenderItem
��! +

tenderitem
��, 6
,
��6 7
string
��7 =
itemid
��> D
)
��D E
{
�� 	
if
�� 
(
�� 
Session
�� 
[
�� 
$str
�� "
]
��" #
==
��$ &
null
��' +
)
��+ ,
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
$str
��1 :
)
��: ;
;
��; <
}
�� 
int
�� 
tenderid
�� 
=
�� 
db
�� 
.
�� 
TenderItems
�� )
.
��) *
ToList
��* 0
(
��0 1
)
��1 2
.
��2 3
Where
��3 8
(
��8 9
m
��9 :
=>
��; =
m
��> ?
.
��? @
itemid
��@ F
==
��G I
Convert
��J Q
.
��Q R
ToInt32
��R Y
(
��Y Z
securityUtil
��Z f
.
��f g
Decode
��g m
(
��m n
itemid
��n t
)
��t u
)
��u v
)
��v w
.
��w x
FirstOrDefault��x �
(��� �
)��� �
.��� �
Tenderid��� �
.��� �
Value��� �
;��� �
var
�� 
item
�� 
=
�� 
int
�� 
.
�� 
Parse
��  
(
��  !
securityUtil
��! -
.
��- .
Decode
��. 4
(
��4 5
itemid
��5 ;
)
��; <
)
��< =
;
��= >

tenderitem
�� 
=
�� 
db
�� 
.
�� 
TenderItems
�� '
.
��' (
Single
��( .
(
��. /
m
��/ 0
=>
��1 3
m
��4 5
.
��5 6
itemid
��6 <
==
��= ?
item
��@ D
)
��D E
;
��E F
ViewBag
�� 
.
�� 
itemid
�� 
=
�� 
itemid
�� #
;
��# $
ViewBag
�� 
.
�� 
BidMethodbag
��  
=
��! "
new
��# &

SelectList
��' 1
(
��1 2
db
��2 4
.
��4 5
BidMethodMasters
��5 E
.
��E F
ToList
��F L
(
��L M
)
��M N
,
��N O
$str
��P Z
,
��Z [
$str
��\ h
,
��h i

tenderitem
��j t
.
��t u
	BidMethod
��u ~
)
��~ 
;�� �
ViewBag
�� 
.
�� 
ItemCategorybag
�� #
=
��$ %
new
��& )

SelectList
��* 4
(
��4 5
db
��5 7
.
��7 8
CategoryMasters
��8 G
.
��G H
ToList
��H N
(
��N O
)
��O P
,
��P Q
$str
��R ^
,
��^ _
$str
��` n
,
��n o

tenderitem
��p z
.
��z {
ItemCategory��{ �
)��� �
;��� �
ViewBag
�� 
.
�� 
Currencybag
�� 
=
��  !
new
��" %

SelectList
��& 0
(
��0 1
db
��1 3
.
��3 4
CurrencyMasters
��4 C
.
��C D
ToList
��D J
(
��J K
)
��K L
,
��L M
$str
��N Z
,
��Z [
$str
��\ f
,
��f g

tenderitem
��h r
.
��r s
Currency
��s {
)
��{ |
;
��| }
ViewBag
�� 
.
�� 
ItemTypebag
�� 
=
��  !
new
��" %

SelectList
��& 0
(
��0 1
db
��1 3
.
��3 4
ItemTypeMasters
��4 C
.
��C D
ToList
��D J
(
��J K
)
��K L
,
��L M
$str
��N V
,
��V W
$str
��X b
,
��b c

tenderitem
��d n
.
��n o
ItemType
��o w
)
��w x
;
��x y
ViewBag
�� 
.
�� 
Tenderidbag
�� 
=
��  !
new
��" %

SelectList
��& 0
(
��0 1
db
��1 3
.
��3 4
Tenders
��4 ;
.
��; <
ToList
��< B
(
��B C
)
��C D
,
��D E
$str
��F P
,
��P Q
$str
��R ^
,
��^ _

tenderitem
��` j
.
��j k
Tenderid
��k s
)
��s t
;
��t u
ViewBag
�� 
.
�� 
UOMbag
�� 
=
�� 
new
��  

SelectList
��! +
(
��+ ,
db
��, .
.
��. /

UOMMasters
��/ 9
.
��9 :
ToList
��: @
(
��@ A
)
��A B
,
��B C
$str
��D K
,
��K L
$str
��M R
,
��R S

tenderitem
��T ^
.
��^ _
UOM
��_ b
)
��b c
;
��c d
ViewBag
�� 
.
�� 
itemlist
�� 
=
�� 
db
�� !
.
��! "
getitemslist
��" .
(
��. /
Convert
��/ 6
.
��6 7
ToInt32
��7 >
(
��> ?
tenderid
��? G
)
��G H
)
��H I
.
��I J
ToList
��J P
(
��P Q
)
��Q R
;
��R S
ViewBag
�� 
.
�� 
Menu
�� 
=
�� 
db
�� 
.
�� 
get_role
�� &
(
��& '
Convert
��' .
.
��. /
ToInt32
��/ 6
(
��6 7
Session
��7 >
[
��> ?
$str
��? I
]
��I J
)
��J K
)
��K L
;
��L M
return
�� 
View
�� 
(
�� 

tenderitem
�� "
)
��" #
;
��# $
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
CustomAuthorize
��	 
(
�� 
Roles
�� 
=
��  
$str
��! 2
)
��2 3
]
��3 4
public
�� 
ActionResult
�� 
Edit
��  
(
��  !
string
��" (
itemid
��) /
,
��/ 0
string
��1 7
tenderid
��8 @
,
��@ A

TenderItem
��A K

tenderitem
��L V
)
��V W
{
�� 	
itemid
�� 
=
�� 
Request
�� 
.
�� 
QueryString
�� (
[
��( )
$str
��) 1
]
��1 2
;
��2 3
tenderid
�� 
=
�� 
Request
�� 
.
�� 
QueryString
�� *
[
��* +
$str
��+ 5
]
��5 6
;
��6 7
if
�� 
(
�� 
Session
�� 
[
�� 
$str
�� "
]
��" #
==
��$ &
null
��' +
)
��+ ,
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
$str
��1 :
)
��: ;
;
��; <
}
�� 
try
�� 
{
�� 
db
�� 
.
�� 
	save_item
��  
(
��  !
Convert
��! (
.
��( )
ToInt32
��) 0
(
��0 1
securityUtil
��1 =
.
��= >
Decode
��> D
(
��D E
itemid
��E K
)
��K L
)
��L M
,
��M N
Convert
��O V
.
��V W
ToInt32
��W ^
(
��^ _
securityUtil
��_ k
.
��k l
Decode
��l r
(
��r s
tenderid
��s {
)
��{ |
)
��| }
,
��} ~

tenderitem�� �
.��� �
ItemType��� �
,��� �

tenderitem��� �
.��� �
ItemName��� �
,��� �

tenderitem��� �
.��� �
ItemDesc��� �
,��� �

tenderitem��� �
.��� �
ItemCategory��� �
,��� �

tenderitem��� �
.��� �
Location��� �
,��� �

tenderitem��� �
.��� �
Quantity��� �
,��� �

tenderitem��� �
.��� �
UOM��� �
,��� �

tenderitem��� �
.��� �
Price��� �
,��� �

tenderitem��� �
.��� �
Currency��� �
,��� �

tenderitem��� �
.��� �
	BidMethod��� �
,��� �

tenderitem��� �
.��� �
ReducePerBid��� �
,��� �

tenderitem��� �
.��� �
Remarks��� �
)��� �
;��� �
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 6
,
��6 7
$str
��8 D
,
��D E
new
��F I
{
��J K
	@tenderid
��L U
=
��V W
tenderid
��W _
}
��` a
)
��a b
;
��b c
}
�� 
catch
�� 
{
�� 
}
�� 
ViewBag
�� 
.
�� 
BidMethodbag
��  
=
��! "
new
��# &

SelectList
��' 1
(
��1 2
db
��2 4
.
��4 5
BidMethodMasters
��5 E
,
��E F
$str
��G Q
,
��Q R
$str
��S _
,
��_ `

tenderitem
��a k
.
��k l
	BidMethod
��l u
)
��u v
;
��v w
ViewBag
�� 
.
�� 
ItemCategorybag
�� #
=
��$ %
new
��& )

SelectList
��* 4
(
��4 5
db
��5 7
.
��7 8
CategoryMasters
��8 G
,
��G H
$str
��I U
,
��U V
$str
��W e
,
��e f

tenderitem
��g q
.
��q r
ItemCategory
��r ~
)
��~ 
;�� �
ViewBag
�� 
.
�� 
Currencybag
�� 
=
��  !
new
��" %

SelectList
��& 0
(
��0 1
db
��1 3
.
��3 4
CurrencyMasters
��4 C
,
��C D
$str
��E Q
,
��Q R
$str
��S ]
,
��] ^

tenderitem
��_ i
.
��i j
Currency
��j r
)
��r s
;
��s t
ViewBag
�� 
.
�� 
ItemTypebag
�� 
=
��  !
new
��" %

SelectList
��& 0
(
��0 1
db
��1 3
.
��3 4
ItemTypeMasters
��4 C
,
��C D
$str
��E M
,
��M N
$str
��O Y
,
��Y Z

tenderitem
��[ e
.
��e f
ItemType
��f n
)
��n o
;
��o p
ViewBag
�� 
.
�� 
Tenderidbag
�� 
=
��  !
new
��" %

SelectList
��& 0
(
��0 1
db
��1 3
.
��3 4
Tenders
��4 ;
,
��; <
$str
��= G
,
��G H
$str
��I U
,
��U V

tenderitem
��W a
.
��a b
Tenderid
��b j
)
��j k
;
��k l
ViewBag
�� 
.
�� 
UOMbag
�� 
=
�� 
new
��  

SelectList
��! +
(
��+ ,
db
��, .
.
��. /

UOMMasters
��/ 9
,
��9 :
$str
��; B
,
��B C
$str
��D I
,
��I J

tenderitem
��K U
.
��U V
UOM
��V Y
)
��Y Z
;
��Z [
ViewBag
�� 
.
�� 
itemlistbag
�� 
=
��  !
db
��" $
.
��$ %
getitemslist
��% 1
(
��1 2
Convert
��2 9
.
��9 :
ToInt32
��: A
(
��A B
securityUtil
��B N
.
��N O
Decode
��O U
(
��U V
tenderid
��V ^
)
��^ _
)
��_ `
)
��` a
.
��a b
ToList
��b h
(
��h i
)
��i j
;
��j k
ViewBag
�� 
.
�� 
Menu
�� 
=
�� 
db
�� 
.
�� 
get_role
�� &
(
��& '
Convert
��' .
.
��. /
ToInt32
��/ 6
(
��6 7
Session
��7 >
[
��> ?
$str
��? I
]
��I J
)
��J K
)
��K L
;
��L M
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �
`C:\Users\tasmiya.sana\Desktop\clone\ebex_pr_trans-master\Ebid\Source\e-auction\App_Data\Crypt.cs
	namespace 	
	e_auction
 
{ 
public		 

static		 
class		 
Crypt		 
{

 
public 
static 
string 
Encrypt $
($ %
this% )
string* 0
mystring1 9
)9 :
{ 	
string 
key 
= 
$str  
;  !
SecurityAES 
. 
AES 
cryptAES $
=% &
new' *
SecurityAES+ 6
.6 7
AES7 :
(: ;
); <
;< =
return 
cryptAES 
. 
Encrypt #
(# $
mystring$ ,
,, -
key. 1
)1 2
;2 3
} 	
public 
static 
string 
Decrypt $
($ %
this% )
string* 0
mystring1 9
)9 :
{ 	
string 
key 
= 
$str  
;  !
SecurityAES 
. 
AES 
cryptAES $
=% &
new' *
SecurityAES+ 6
.6 7
AES7 :
(: ;
); <
;< =
return 
cryptAES 
. 
Decrypt #
(# $
mystring$ ,
,, -
key. 1
)1 2
;2 3
} 	
} 
} �
]C:\Users\tasmiya.sana\Desktop\clone\ebex_pr_trans-master\Ebid\Source\e-auction\Global.asax.cs
	namespace 	
	e_auction
 
{ 
public 

class 
Global 
: 
System  
.  !
Web! $
.$ %
HttpApplication% 4
{ 
	protected 
void 
Application_Start (
(( )
object) /
sender0 6
,6 7
	EventArgs8 A
eB C
)C D
{ 	
AreaRegistration 
. 
RegisterAllAreas -
(- .
). /
;/ 0
RouteConfig 
. 
RegisterRoutes &
(& '

RouteTable' 1
.1 2
Routes2 8
)8 9
;9 :
BundleConfig 
. 
RegisterBundles (
(( )
BundleTable) 4
.4 5
Bundles5 <
)< =
;= >
List 
< 

UserMaster 
> 
lst  
=! "
new# &
List' +
<+ ,

UserMaster, 6
>6 7
(7 8
)8 9
;9 :
Application 
[ 
$str "
]" #
=$ %
lst& )
;) *
} 	
	protected 
void 
Session_Start $
($ %
object% +
sender, 2
,2 3
	EventArgs4 =
e> ?
)? @
{ 	
}   	
	protected"" 
void"" $
Application_BeginRequest"" /
(""/ 0
object""0 6
sender""7 =
,""= >
	EventArgs""? H
e""I J
)""J K
{## 	
}%% 	
	protected'' 
void'' +
Application_AuthenticateRequest'' 6
(''6 7
object''7 =
sender''> D
,''D E
	EventArgs''F O
e''P Q
)''Q R
{(( 	
}** 	
	protected,, 
void,, 
Application_Error,, (
(,,( )
object,,) /
sender,,0 6
,,,6 7
	EventArgs,,8 A
e,,B C
),,C D
{-- 	
}// 	
	protected11 
void11 
Session_End11 "
(11" #
object11# )
sender11* 0
,110 1
	EventArgs112 ;
e11< =
)11= >
{22 	
List33 
<33 

UserMaster33 
>33 
lstTemp33 $
=33% &
(33' (
List33( ,
<33, -

UserMaster33- 7
>337 8
)338 9
Application339 D
[33D E
$str33E O
]33O P
;33P Q
var44 
item44 
=44 
lstTemp44 
.44 
Single44 %
(44% &
x44& '
=>44( *
x44+ ,
.44, -
LoginId44- 4
==445 7
Session448 ?
[44? @
$str44@ J
]44J K
.44K L
ToString44L T
(44T U
)44U V
)44V W
;44W X
if55 
(55 
item55 
.55 
LoginId55 
.55 
Count55 !
(55! "
)55" #
>55# $
$num55$ %
)55% &
{66 
lstTemp77 
.77 
Remove77 
(77 
item77 #
)77# $
;77$ %
}88 
}99 	
	protected;; 
void;; 
Application_End;; &
(;;& '
object;;' -
sender;;. 4
,;;4 5
	EventArgs;;6 ?
e;;@ A
);;A B
{<< 	
}>> 	
}?? 
}@@ �
aC:\Users\tasmiya.sana\Desktop\clone\ebex_pr_trans-master\Ebid\Source\e-auction\Hubs\GetLeadBid.cs
[		 
assembly		 	
:			 

OwinStartup		 
(		 
typeof		 
(		 
	e_auction		 '
.		' (
Startup		( /
)		/ 0
)		0 1
]		1 2
	namespace

 	
	e_auction


 
.

 
Hubs

 
{ 
public 

class 

GetLeadBid 
: 
Hub !
{ 
public 
void 
Hello 
( 
) 
{ 	
Clients 
. 
All 
. 
hello 
( 
$str %
)% &
;& '
} 	
public 
void 
Send 
( 
string 
name  $
,$ %
string& ,
message- 4
)4 5
{ 	
Clients 
. 
All 
. 
addNewMessageToPage +
(+ ,
name, 0
,0 1
message2 9
)9 :
;: ;
} 	
public 
void 

GetLeading 
( 
)  
{ 	
} 	
public 
override 
Task 
OnConnected (
(( )
)) *
{ 	
SendMonitoringData 
( 
$str *
,* +
Context, 3
.3 4
ConnectionId4 @
)@ A
;A B
return   
base   
.   
OnConnected   #
(  # $
)  $ %
;  % &
}!! 	
public## 
override## 
Task## 
OnDisconnected## +
(##+ ,
bool##, 0

stopCalled##1 ;
)##; <
{$$ 	
SendMonitoringData%% 
(%% 
$str%% -
,%%- .
Context%%/ 6
.%%6 7
ConnectionId%%7 C
)%%C D
;%%D E
return&& 
base&& 
.&& 
OnDisconnected&& &
(&&& '

stopCalled&&' 1
)&&1 2
;&&2 3
}'' 	
public)) 
override)) 
Task)) 
OnReconnected)) *
())* +
)))+ ,
{** 	
SendMonitoringData++ 
(++ 
$str++ ,
,++, -
Context++. 5
.++5 6
ConnectionId++6 B
)++B C
;++C D
return,, 
base,, 
.,, 
OnReconnected,, %
(,,% &
),,& '
;,,' (
}-- 	
private// 
void// 
SendMonitoringData// '
(//' (
string//( .
	eventType/// 8
,//8 9
string//: @
connectionId//A M
)//M N
{00 	
var11 
context11 
=11 

GlobalHost11 $
.11$ %
ConnectionManager11% 6
.116 7
GetHubContext117 D
<11D E

GetLeadBid11E O
>11O P
(11P Q
)11Q R
;11R S
context22 
.22 
Clients22 
.22 
All22 
.22  
newEvent22  (
(22( )
	eventType22) 2
,222 3
connectionId224 @
)22@ A
;22A B
}33 	
}44 
}55 �	
dC:\Users\tasmiya.sana\Desktop\clone\ebex_pr_trans-master\Ebid\Source\e-auction\Hubs\GetTenderInfo.cs
	namespace 	
	e_auction
 
. 
Hubs 
{ 
public		 

class		 
GetTenderInfo		 
:		  
Hub		! $
{

 
public 
void 

TenderData 
( 
)  
{ 	
IHubContext 
context 
=  !

GlobalHost" ,
., -
ConnectionManager- >
.> ?
GetHubContext? L
<L M
GetTenderInfoM Z
>Z [
([ \
)\ ]
;] ^
context 
. 
Clients 
. 
All 
.  
displayTenderDetail  3
(3 4
)4 5
;5 6
} 	
public 
void 
Hello 
( 
) 
{ 	
Clients 
. 
All 
. 
hello 
( 
) 
;  
} 	
} 
} �
ZC:\Users\tasmiya.sana\Desktop\clone\ebex_pr_trans-master\Ebid\Source\e-auction\Livedata.cs
	namespace 	
	e_auction
 
{ 
public		 

class		 
Livedata		 
:		 
Hub		 
{

 
public 
void 
Hello 
( 
) 
{ 	
Clients 
. 
All 
. 
	introduce !
(! "
$str" &
)& '
;' (
} 	
} 
} �
cC:\Users\tasmiya.sana\Desktop\clone\ebex_pr_trans-master\Ebid\Source\e-auction\Models\UserMaster.cs
	namespace 	
	e_auction
 
. 
Models 
{ 
public 

class 

UserMaster 
{		 
public

 
string

 
LoginId

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
RoleName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
DateTime 
	LastLogin !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} �
hC:\Users\tasmiya.sana\Desktop\clone\ebex_pr_trans-master\Ebid\Source\e-auction\Models\UserMasterModel.cs
	namespace 	
	e_auction
 
. 
Models 
{ 
public 

class 
UserMasterModel  
{		 
public

 
static

 
List

 
<

 

UserMaster

 %
>

% &
listUserMaster

' 5
=

6 7
new

8 ;
List

< @
<

@ A

UserMaster

A K
>

K L
(

L M
)

M N
;

N O
public 

UserMaster 
find 
( 
string %
loginid& -
)- .
{ 	
return 
listUserMaster !
.! "
Where" '
(' (
acc( +
=>, .
acc/ 2
.2 3
LoginId3 :
.: ;
Equals; A
(A B
loginidB I
)I J
)J K
.K L
FirstOrDefaultL Z
(Z [
)[ \
;\ ]
} 	
} 
} �
iC:\Users\tasmiya.sana\Desktop\clone\ebex_pr_trans-master\Ebid\Source\e-auction\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str $
)$ %
]% &
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str &
)& '
]' (
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
["" 
assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
]""% &
[## 
assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
]##) *�
gC:\Users\tasmiya.sana\Desktop\clone\ebex_pr_trans-master\Ebid\Source\e-auction\App_Data\securityUtil.cs
	namespace 	
	e_auction
 
{		 
public

 

static

 
class

 
securityUtil

 $
{ 
static 
SecurityHelper 
security &
=' (
new) ,
SecurityHelper- ;
(; <
)< =
;= >
public 
static 
string 
Encode #
(# $
this$ (
string) /
myString0 8
)8 9
{ 	
string 
key 
= 
$str  
;  !
SecurityAES 
. 
AES 
cryptAES $
=% &
new' *
SecurityAES+ 6
.6 7
AES7 :
(: ;
); <
;< =
return 
cryptAES 
. 
Encrypt #
(# $
myString% -
,- .
key/ 2
)2 3
;3 4
} 	
public 
static 
string 
Decode #
(# $
this$ (
string) /
myString0 8
)8 9
{ 	
string 
key 
= 
$str  
;  !
SecurityAES 
. 
AES 
cryptAES $
=% &
new' *
SecurityAES+ 6
.6 7
AES7 :
(: ;
); <
;< =
return 
cryptAES 
. 
Decrypt #
(# $
myString$ ,
,, -
key. 1
)1 2
;2 3
} 	
} 
} �
sC:\Users\tasmiya.sana\Desktop\clone\ebex_pr_trans-master\Ebid\Source\e-auction\Security\CustomAuthorizeAttribute.cs
	namespace		 	
	e_auction		
 
.		 
Security		 
{

 
public 

class $
CustomAuthorizeAttribute )
:) *
AuthorizeAttribute* <
{ 
public 
override 
void 
OnAuthorization ,
(, - 
AuthorizationContext- A
filterContextB O
)O P
{ 	
if 
( 
string 
. 
IsNullOrEmpty #
(# $
SessionPersister$ 4
.4 5
LoginId5 <
)< =
)= >
{ 
filterContext 
. 
Result $
=% &
new' *!
RedirectToRouteResult+ @
(@ A
newA D 
RouteValueDictionaryE Y
(Y Z
newZ ]
{^ _

controller_ i
=i j
$strj s
,s t
actiont z
=z {
$str	{ �
}
� �
)
� �
)
� �
;
� �
} 
else 
{ 
UserMasterModel 
um  "
=" #
new# &
UserMasterModel' 6
(6 7
)7 8
;8 9
CustomPrincipal 
cm  "
=# $
new% (
CustomPrincipal) 8
(8 9
um9 ;
.; <
find< @
(@ A
SessionPersisterA Q
.Q R
LoginIdR Y
)Y Z
)Z [
;[ \
if 
( 
! 
cm 
. 
IsInRole  
(  !
Roles! &
)& '
)' (
filterContext !
.! "
Result" (
=) *
new+ .!
RedirectToRouteResult/ D
(D E
newE H 
RouteValueDictionaryI ]
(] ^
new^ a
{b c

controllerd n
=o p
$strq 
,	 �
action
� �
=
� �
$str
� �
}
� �
)
� �
)
� �
;
� �
List 
< 

UserMaster 
>  
lstTemp! (
=) *
(+ ,
List, 0
<0 1

UserMaster1 ;
>; <
)< =
HttpContext= H
.H I
CurrentI P
.P Q
ApplicationQ \
[\ ]
$str] g
]g h
;h i
lstTemp 
. 
Where 
( 
t 
=>  "
t# $
.$ %
LoginId% ,
==- /
SessionPersister0 @
.@ A
LoginIdA H
)H I
.I J
FirstOrDefaultJ X
(X Y
)Y Z
.Z [
	LastLogin[ d
=e f
DateTimeg o
.o p
Nowp s
;s t
} 
}!! 	
}"" 
}## �
jC:\Users\tasmiya.sana\Desktop\clone\ebex_pr_trans-master\Ebid\Source\e-auction\Security\CustomPrincipal.cs
	namespace 	
	e_auction
 
. 
Security 
{		 
public

 

class

 
CustomPrincipal

  
:

  !

IPrincipal

! +
{ 
private 

UserMaster 

UserMaster %
;% &
public 
CustomPrincipal 
( 

UserMaster )

userMaster* 4
)4 5
{ 	
try 
{ 
this 
. 

UserMaster 
=  !

userMaster" ,
;, -
this 
. 
Identity 
= 
new  #
GenericIdentity$ 3
(3 4

userMaster4 >
.> ?
LoginId? F
)F G
;G H
this 
. 

UserMaster 
.  
	LastLogin  )
=* +
DateTime, 4
.4 5
Now5 8
;8 9
} 
catch 
( 
	Exception 
ex 
) 
{ 
} 
} 	
public 
	IIdentity 
Identity !
{ 	
get 
; 
set 
; 
} 	
public!! 
bool!! 
IsInRole!! 
(!! 
string!! #
role!!$ (
)!!( )
{"" 	
var## 
roles## 
=## 
role## 
.## 
Split## "
(##" #
new### &
char##' +
[##+ ,
]##, -
{##. /
$char##0 3
}##4 5
)##5 6
;##6 7
return$$ 
roles$$ 
.$$ 
Any$$ 
($$ 
r$$ 
=>$$ !
this$$" &
.$$& '

UserMaster$$' 1
.$$1 2
RoleName$$2 :
.$$: ;
Contains$$; C
($$C D
r$$D E
)$$E F
)$$F G
;$$G H
}%% 	
}'' 
}(( �
kC:\Users\tasmiya.sana\Desktop\clone\ebex_pr_trans-master\Ebid\Source\e-auction\Security\SessionPersister.cs
	namespace 	
	e_auction
 
. 
Security 
{ 
public 

class 
SessionPersister !
{		 
public

 
static

 
string

 
loginidSessionvar

 .
=

/ 0
$str

1 :
;

: ;
public 
static 
string 
usernameSessionVar /
=0 1
$str2 <
;< =
public 
static 
string 
LoginId $
{ 	
get 
{ 
if 
( 
HttpContext 
.  
Current  '
==( *
null+ /
)/ 0
return 
string !
.! "
Empty" '
;' (
var 

sessionVar 
=  
HttpContext! ,
., -
Current- 4
.4 5
Session5 <
[< =
loginidSessionvar= N
]N O
;O P
if 
( 

sessionVar 
!= 
null #
)# $
return 

sessionVar %
as& (
string) /
;/ 0
return 
null 
; 
} 
set 
{ 
HttpContext 
. 
Current #
.# $
Session$ +
[+ ,
loginidSessionvar, =
]= >
=? @
valueA F
;F G
} 
} 	
public 
static 
string 
UserName %
{ 	
get   
{!! 
if"" 
("" 
HttpContext"" 
.""  
Current""  '
==""( *
null""+ /
)""/ 0
return## 
string## !
.##! "
Empty##" '
;##' (
var$$ 

sessionVar$$ 
=$$  
HttpContext$$! ,
.$$, -
Current$$- 4
.$$4 5
Session$$5 <
[$$< =
usernameSessionVar$$= O
]$$O P
;$$P Q
if%% 
(%% 

sessionVar%% 
!=%% !
null%%" &
)%%& '
return&& 

sessionVar&& %
as&&& (
string&&) /
;&&/ 0
return'' 
null'' 
;'' 
}(( 
set)) 
{** 
HttpContext++ 
.++ 
Current++ #
.++# $
Session++$ +
[+++ ,
usernameSessionVar++, >
]++> ?
=++@ A
value++B G
;++G H
},, 
}-- 	
}// 
}00 �
YC:\Users\tasmiya.sana\Desktop\clone\ebex_pr_trans-master\Ebid\Source\e-auction\Startup.cs
[ 
assembly 	
:	 
 
OwinStartupAttribute 
(  
typeof  &
(& '
	e_auction' 0
.0 1
Startup1 8
)8 9
)9 :
]: ;
	namespace 	
	e_auction
 
{ 
public		 

class		 
Startup		 
{

 
public 
void 
Configuration !
(! "
IAppBuilder" -
app. 1
)1 2
{ 	
app 
. 

MapSignalR 
( 
) 
; 
} 	
} 
} 