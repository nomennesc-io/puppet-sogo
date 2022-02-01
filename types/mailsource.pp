# @summary Manage a SOGo mail source
type Sogo::Mailsource = Struct[
  {
    'SOGoDraftsFolderName'                       => Optional[String],
    Optional['SOGoSentFolderName']               => String,
    Optional['SOGoTrashFolderName']              => String,
    Optional['SOGoIMAPServer']                   => String,
    Optional['SOGoSieveServer']                  => String,
    Optional['SOGoSMTPServer']                   => String,
    Optional['SOGoMailDomain']                   => String,
    Optional['SOGoMailingMechanism']             => String,
    Optional['SOGoForceExternalLoginWithEmail']  => String,
    Optional['SOGoMailSpoolPath']                => String,
    Optional['NGImap4ConnectionStringSeparator'] => String,
  }
]

