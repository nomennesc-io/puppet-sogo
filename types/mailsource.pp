# @summary Manage a SOGo mail source
type Sogo::Mailsource = Struct[
  {
    SOGoDraftsFolderName             => Optional[String],
    SOGoSentFolderName               => Optional[String],
    SOGoTrashFolderName              => Optional[String],
    SOGoIMAPServer                   => Optional[String],
    SOGoSieveServer                  => Optional[String],
    SOGoSMTPServer                   => Optional[String],
    SOGoMailDomain                   => Optional[String],
    SOGoMailingMechanism             => Optional[String],
    SOGoForceExternalLoginWithEmail  => Optional[String],
    SOGoMailSpoolPath                => Optional[String],
    NGImap4ConnectionStringSeparator => Optional[String],
  }
]

