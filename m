Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id E47676E12E
	for <lists.bridge@lfdr.de>; Fri, 19 Jul 2019 08:50:18 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D71162224;
	Fri, 19 Jul 2019 06:50:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1246D2218
	for <bridge@lists.linux-foundation.org>;
	Fri, 19 Jul 2019 06:49:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
	[209.85.160.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 74DA6FE
	for <bridge@lists.linux-foundation.org>;
	Fri, 19 Jul 2019 06:49:54 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id h21so29861430qtn.13
	for <bridge@lists.linux-foundation.org>;
	Thu, 18 Jul 2019 23:49:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=zfGToBds18suaPosWKE/2T3izyW6zSmNZU6D/7RAmgE=;
	b=GheRkGD4wKIGTBU22fFGWJ9FajDeli7rZozSD4EHUNHlSS7fXayK8BthsKrQQjpYp3
	AFkCwRe5Qai3zUBPiyFJPC+vuZLKNeNlI0kfp+tf26N5swjsjDoGDoPZaMuEkO+wyIY3
	xxvnvDXLB3TekRfHh8lLk/4PA7cn5pLyH9d1P4xjeu2JVRw9MwTnczFCemBjso4aET/w
	5N5leKm9G8af47biGsKKGXcZ/KbAQAMy7mmRU2M+mXutUPGS3Q5KCS9tuInOfNn7UnC6
	VsEvbHb4iui5+tu0PwGAKv5LCAbW56/qmWyGG96UDCc3lS0hdHAX8tb6qXUOIIlwIkAc
	5EDQ==
X-Gm-Message-State: APjAAAXVskbT9f79FxFG05Z3EGoMker80LhV+/59J6JR89ochbUj0sBq
	2Vc6GrU0se1PtBedDRrRrnUoKCn34ZdPMJtzf1E=
X-Google-Smtp-Source: APXvYqyNjTc42pQ1sKjehQS1untTD4duEeurrsI/kTdOBEK71qAdbybFsNiZBlVojBbGxe4c1/U/qrE8abUEnZ12d+8=
X-Received: by 2002:a0c:ba2c:: with SMTP id w44mr35836449qvf.62.1563518993465; 
	Thu, 18 Jul 2019 23:49:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190710080835.296696-1-arnd@arndb.de>
	<20190718190110.akn54iwb2mui72cd@salvia>
	<20190719063749.45io5pxcxrlmrqqn@salvia>
In-Reply-To: <20190719063749.45io5pxcxrlmrqqn@salvia>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 19 Jul 2019 08:49:37 +0200
Message-ID: <CAK8P3a0XzP3Oj9rZGBbcj8=na94QgUJiLNsNPxCBC_xK7O6AoQ@mail.gmail.com>
To: Pablo Neira Ayuso <pablo@netfilter.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: wenxu <wenxu@ucloud.cn>, Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
	Networking <netdev@vger.kernel.org>,
	Roopa Prabhu <roopa@cumulusnetworks.com>,
	bridge@lists.linux-foundation.org, Florian Westphal <fw@strlen.de>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Jozsef Kadlecsik <kadlec@netfilter.org>, coreteam@netfilter.org,
	netfilter-devel <netfilter-devel@vger.kernel.org>,
	"David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH] [net-next] netfilter: bridge: make
	NF_TABLES_BRIDGE tristate
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

On Fri, Jul 19, 2019 at 8:37 AM Pablo Neira Ayuso <pablo@netfilter.org> wrote:
>
> On Thu, Jul 18, 2019 at 09:01:10PM +0200, Pablo Neira Ayuso wrote:
> > On Wed, Jul 10, 2019 at 10:08:20AM +0200, Arnd Bergmann wrote:
> > > The new nft_meta_bridge code fails to link as built-in when NF_TABLES
> > > is a loadable module.
> > >
> > > net/bridge/netfilter/nft_meta_bridge.o: In function `nft_meta_bridge_get_eval':
> > > nft_meta_bridge.c:(.text+0x1e8): undefined reference to `nft_meta_get_eval'
> > > net/bridge/netfilter/nft_meta_bridge.o: In function `nft_meta_bridge_get_init':
> > > nft_meta_bridge.c:(.text+0x468): undefined reference to `nft_meta_get_init'
> > > nft_meta_bridge.c:(.text+0x49c): undefined reference to `nft_parse_register'
> > > nft_meta_bridge.c:(.text+0x4cc): undefined reference to `nft_validate_register_store'
> > > net/bridge/netfilter/nft_meta_bridge.o: In function `nft_meta_bridge_module_exit':
> > > nft_meta_bridge.c:(.exit.text+0x14): undefined reference to `nft_unregister_expr'
> > > net/bridge/netfilter/nft_meta_bridge.o: In function `nft_meta_bridge_module_init':
> > > nft_meta_bridge.c:(.init.text+0x14): undefined reference to `nft_register_expr'
> > > net/bridge/netfilter/nft_meta_bridge.o:(.rodata+0x60): undefined reference to `nft_meta_get_dump'
> > > net/bridge/netfilter/nft_meta_bridge.o:(.rodata+0x88): undefined reference to `nft_meta_set_eval'
> > >
> > > This can happen because the NF_TABLES_BRIDGE dependency itself is just a
> > > 'bool'.  Make the symbol a 'tristate' instead so Kconfig can propagate the
> > > dependencies correctly.
> >
> > Hm. Something breaks here. Investigating. Looks like bridge support is
> > gone after this, nft fails to register the filter chain type:
> >
> > # nft add table bridge x
> > # nft add chain bridge x y { type filter hook input priority 0\; }
> > Error: Could not process rule: No such file or directory
>
> Found it. It seems this patch is needed, on top of your patch.

Right, makes sense.

> I can just squash this chunk into your original patch and push it out
> if you're OK witht this.

Yes, please do.

      Arnd
