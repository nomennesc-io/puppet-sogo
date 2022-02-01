# @summary Manage a SOGo mail source
type Sogo::Mailsource = Struct[
  {
    Optional['SOGoDraftsFolderName']             => String,
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

