Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 648133BD77
	for <lists.bridge@lfdr.de>; Mon, 10 Jun 2019 22:28:33 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6185CE29;
	Mon, 10 Jun 2019 20:28:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2EC63DA6
	for <bridge@lists.linux-foundation.org>;
	Mon, 10 Jun 2019 20:28:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx.kolabnow.com (mx.kolabnow.com [95.128.36.41])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 28064174
	for <bridge@lists.linux-foundation.org>;
	Mon, 10 Jun 2019 20:28:13 +0000 (UTC)
Received: from localhost (unknown [127.0.0.1])
	by ext-mx-out001.mykolab.com (Postfix) with ESMTP id 6F0AF471;
	Mon, 10 Jun 2019 22:28:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
	content-type:content-type:content-transfer-encoding:mime-version
	:references:in-reply-to:message-id:date:date:subject:subject
	:from:from:received:received:received; s=dkim20160331; t=
	1560198490; x=1562012891; bh=ySLNIX1jiCqldrmER8p/c1YOLUiUU7vfIBo
	k3u7v1yA=; b=EapXvUIMVFf6+o/ABs27wxwmgtHDsszrg9EFsnc24dvgL7QF2qq
	TaG4xjoviEw/OnDIhauiiHZdzx1W+LfScdG2OGC1E+j5/+veHcxBj/MTdpjq1+Lu
	KAMsQ9Z1c+65LrZDSBOU4PAT0+Os8ZZiwgE99D5H7FOfhLhQqsAfr6Is99Hc8o4s
	vSnZWPYPwqTsX8XALZYd5hLbqAlHBuT1Ti4ucBeIButpQ38ylbUChwbPre8s9TmY
	KrluQr7SGOWuWZBAmlnDiXPuDHeDKbRy6hJol5nqh3w1trxYcii4RjN49A9I+z+e
	zlKNVjS8XXYGzUUF9NrXxy8KM/85ZXFax7cDlKsiTrwtl1ANz0PD4e0H8et5hrzY
	vnbDN77J59GZjgx0ZNyYjSz207JTssMEdP2o5tsmYeVoogZCiT0cXpttrokaHKYm
	u8fxntxISlah+bMsG6PLTfeiKuzKCdDDI8U6a75onv+Ne32mGEGrERibJgnoxIi/
	9ule/llnhkd5nm60D87JBEdaCXyCIQArCFqerbkNcGJFx1VGXP22KkvoJp0ZFaVt
	SyA3AzIxLUW8iUcscrnAZa17tF3CzDYnEUG33/1NghStEyjkZ1QqtZynATBoeaYL
	/8xfOuy9TMGb4RoYPT+vcPL3j2M7mY6BXbD45qGOZ16ecLRGOpuBf+1A=
X-Virus-Scanned: amavisd-new at mykolab.com
X-Spam-Score: -1.9
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
Received: from mx.kolabnow.com ([127.0.0.1])
	by localhost (ext-mx-out001.mykolab.com [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id ob2j4vb4okHw; Mon, 10 Jun 2019 22:28:10 +0200 (CEST)
Received: from int-mx002.mykolab.com (unknown [10.9.13.2])
	by ext-mx-out001.mykolab.com (Postfix) with ESMTPS id A7DC0206;
	Mon, 10 Jun 2019 22:28:10 +0200 (CEST)
Received: from ext-subm001.mykolab.com (unknown [10.9.6.1])
	by int-mx002.mykolab.com (Postfix) with ESMTPS id B08DA38E4;
	Mon, 10 Jun 2019 18:48:28 +0200 (CEST)
From: Federico Vaga <federico.vaga@vaga.pv.it>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Date: Mon, 10 Jun 2019 18:48:26 +0200
Message-ID: <15154261.vasc4R9psd@harkonnen>
In-Reply-To: <3d40d111d0512d785b6a67573772f532f88d2359.1560045490.git.mchehab+samsung@kernel.org>
References: <cover.1560045490.git.mchehab+samsung@kernel.org>
	<3d40d111d0512d785b6a67573772f532f88d2359.1560045490.git.mchehab+samsung@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: , linux-wireless@vger.kernel.org, linux-fbdev@vger.kernel.org,
	Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
	Stanislaw Gruszka <sgruszka@redhat.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	bridge@lists.linux-foundation.org,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	David Woodhouse <dwmw2@infr.linuxfoundation.org>,
	Palmer Dabbelt <palmer@sifive.com>, alsa-devel@alsa-project.org,
	dri-devel@lists.freedesktop.org, Ofer Levi <oferle@mellanox.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Harry Wei <harryxiyou@gmail.com>, Paul Mackerras <paulus@samba.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	linux-riscv@lists.infradead.org, Vincent Chen <deanbo422@gmail.com>,
	Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
	Jonas Bonn <jonas@southpole.se>,
	Alex Shi <alex.shi@linux.alibaba.com>, linux-c6x-dev@linux-c6x.org,
	linux-scsi@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
	netdev@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
	coreteam@netfilter.org, Mark Salter <msalter@redhat.com>,
	Al exey Kuznetsov <kuznet@ms2.inr.ac.ru>,
	linux-snps-arc@lists.infradead.org,
	Roopa Prabhu <roopa@cumulusnetworks.com>,
	Pablo Neira Ayuso <pablo@netfilter.org>, devel@driverdev.osuosl.org,
	Albert Ou <aou@eecs.berkeley.edu>,
	Johannes Berg <johannes.berg@intel.com>,
	Intel Linux Wireless <linuxwifi@intel.com>,
	linux-kbuild@vger.kernel.org,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>,
	linuxppc-dev@lists.ozlabs.org,
	Mauro Carvalho Chehab <mchehab@infradead.org>,
	adead.or@mail.linuxfoundation.org, openrisc@lists.librecores.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Greentime Hu <green.hu@gmail.com>, linux-mtd@lists.infradead.org,
	Takashi Iwai <tiwai@suse.com>, Jaroslav Kysela <perex@perex.cz>,
	Stafford Horne <shorne@gmail.com>,
	Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
	Kalle Valo <kvalo@codeaurora.org>,
	Jon Maloy <jon.maloy@ericsson.com>, Michal Simek <monstr@monstr.eu>,
	Michal Marek <michal.lkml@markovi.net>,
	Nikolay Aleksandrov <nikolay@cumulusnetworks>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
	Vineet Gupta <vgupta@synopsys.com>, linux-usb@vger.kernel.org,
	Florian Westphal <fw@strlen.de>, linux-kernel@vger.kernel.org,
	tipc-discussion@lists.sourceforge.net,
	Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Miguel Ojeda Sandonis <miguel.ojeda.sandonis@gmail.com>,
	netfilter-devel@vger.kernel.org, Richard Weinberger <richard@nod.at>,
	Ying Xue <ying.xue@windriver.com>,
	Luca Coelho <luciano.coelho@intel.com>,
	Brian Norris <computersforpeace@gmail.com>,
	com@mail.linuxfoundation.org, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH v3 14/33] docs: kbuild: convert docs to ReST
	and rename to *.rst
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

In data Sunday, June 9, 2019 4:27:04 AM CEST, Mauro Carvalho Chehab ha 
scritto:
> The kbuild documentation clearly shows that the documents
> there are written at different times: some use markdown,
> some use their own peculiar logic to split sections.
> 
> Convert everything to ReST without affecting too much
> the author's style and avoiding adding uneeded markups.
> 
> The conversion is actually:
>   - add blank lines and identation in order to identify paragraphs;
>   - fix tables markups;
>   - add some lists markups;
>   - mark literal blocks;
>   - adjust title markups.
> 
> At its new index.rst, let's add a :orphan: while this is not linked to
> the main index.rst file, in order to avoid build warnings.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
> ---
>  Documentation/admin-guide/README.rst          |   2 +-
>  ...eaders_install.txt => headers_install.rst} |   5 +-
>  Documentation/kbuild/index.rst                |  27 +
>  Documentation/kbuild/issues.rst               |  11 +
>  .../kbuild/{kbuild.txt => kbuild.rst}         | 119 ++--
>  ...nfig-language.txt => kconfig-language.rst} | 232 ++++----
>  ...anguage.txt => kconfig-macro-language.rst} |  37 +-
>  .../kbuild/{kconfig.txt => kconfig.rst}       | 136 +++--
>  .../kbuild/{makefiles.txt => makefiles.rst}   | 530 +++++++++++-------
>  .../kbuild/{modules.txt => modules.rst}       | 168 +++---
>  Documentation/kernel-hacking/hacking.rst      |   4 +-
>  Documentation/process/coding-style.rst        |   2 +-
>  Documentation/process/submit-checklist.rst    |   2 +-
>  .../it_IT/kernel-hacking/hacking.rst          |   4 +-
>  .../it_IT/process/coding-style.rst            |   2 +-
>  .../it_IT/process/submit-checklist.rst        |   2 +-

Limited to translations/it_IT

Acked-by: Federico Vaga <federico.vaga@vaga.pv.it>

>  .../zh_CN/process/coding-style.rst            |   2 +-
>  .../zh_CN/process/submit-checklist.rst        |   2 +-
>  Kconfig                                       |   2 +-
>  arch/arc/plat-eznps/Kconfig                   |   2 +-
>  arch/c6x/Kconfig                              |   2 +-
>  arch/microblaze/Kconfig.debug                 |   2 +-
>  arch/microblaze/Kconfig.platform              |   2 +-
>  arch/nds32/Kconfig                            |   2 +-
>  arch/openrisc/Kconfig                         |   2 +-
>  arch/powerpc/sysdev/Kconfig                   |   2 +-
>  arch/riscv/Kconfig                            |   2 +-
>  drivers/auxdisplay/Kconfig                    |   2 +-
>  drivers/firmware/Kconfig                      |   2 +-
>  drivers/mtd/devices/Kconfig                   |   2 +-
>  drivers/net/ethernet/smsc/Kconfig             |   6 +-
>  drivers/net/wireless/intel/iwlegacy/Kconfig   |   4 +-
>  drivers/net/wireless/intel/iwlwifi/Kconfig    |   2 +-
>  drivers/parport/Kconfig                       |   2 +-
>  drivers/scsi/Kconfig                          |   4 +-
>  drivers/staging/sm750fb/Kconfig               |   2 +-
>  drivers/usb/misc/Kconfig                      |   4 +-
>  drivers/video/fbdev/Kconfig                   |  14 +-
>  net/bridge/netfilter/Kconfig                  |   2 +-
>  net/ipv4/netfilter/Kconfig                    |   2 +-
>  net/ipv6/netfilter/Kconfig                    |   2 +-
>  net/netfilter/Kconfig                         |  16 +-
>  net/tipc/Kconfig                              |   2 +-
>  scripts/Kbuild.include                        |   4 +-
>  scripts/Makefile.host                         |   2 +-
>  scripts/kconfig/symbol.c                      |   2 +-
>  .../tests/err_recursive_dep/expected_stderr   |  14 +-
>  sound/oss/dmasound/Kconfig                    |   6 +-
>  48 files changed, 840 insertions(+), 561 deletions(-)
>  rename Documentation/kbuild/{headers_install.txt => headers_install.rst}
> (96%) create mode 100644 Documentation/kbuild/index.rst
>  create mode 100644 Documentation/kbuild/issues.rst
>  rename Documentation/kbuild/{kbuild.txt => kbuild.rst} (72%)
>  rename Documentation/kbuild/{kconfig-language.txt => kconfig-language.rst}
> (85%) rename Documentation/kbuild/{kconfig-macro-language.txt =>
> kconfig-macro-language.rst} (94%) rename Documentation/kbuild/{kconfig.txt
> => kconfig.rst} (80%)
>  rename Documentation/kbuild/{makefiles.txt => makefiles.rst} (83%)
>  rename Documentation/kbuild/{modules.txt => modules.rst} (84%)



