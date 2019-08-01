Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D927E366
	for <lists.bridge@lfdr.de>; Thu,  1 Aug 2019 21:39:27 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EBBDB26A4;
	Thu,  1 Aug 2019 19:39:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7FEFF3216
	for <bridge@lists.linux-foundation.org>;
	Thu,  1 Aug 2019 19:17:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
	[209.85.222.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E32A65F4
	for <bridge@lists.linux-foundation.org>;
	Thu,  1 Aug 2019 19:17:41 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id t187so241305qke.8
	for <bridge@lists.linux-foundation.org>;
	Thu, 01 Aug 2019 12:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:message-id:from:to:cc:subject:in-reply-to:references
	:mime-version:content-disposition:content-transfer-encoding;
	bh=sRRiRudfVesVn/6GMaai5lXBbVTh+LZyVmU+cspSzXM=;
	b=oP/qcp7e7SDYkq4SklR2U463DOEjUG4XH1YJwo0VEXBwicGboi5pGMn9abgg1uE6Xj
	fRhU7NN5gxmDrnvq2yP/Cbd18TjvIpe+oVr0tv0H3Z/bRc04MMMeIGxtdBimifVARFAZ
	16UNH5EY/Ds7R3HDg4JY0C3nKuulhZ9fBhGkpfLNMn+krDlZQ5YhexVczp+M/AxYX457
	Z+nWS9w5zyF2p3XiT6fipxcUJixAslkf0NJ5+aZ77DkOGS2/zawWMKVM3E6zIplMZe3O
	FqSqbOuiacf4qjJngTBhzjbXTm4PxSioxliQWYbDhyJsosAp2WaV9vvKcon/rOTdCY+l
	Aaqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:from:to:cc:subject:in-reply-to
	:references:mime-version:content-disposition
	:content-transfer-encoding;
	bh=sRRiRudfVesVn/6GMaai5lXBbVTh+LZyVmU+cspSzXM=;
	b=t01UlYQby7J32l5xQQ6oTVtAYtpSCdrE/QvG6su/qPHpHxd4rM1ifEcfhVWJfx5hTV
	wcEaPso4uu/Or0iaEpsy9qlTyNCYpmHa/TYilFiFSOdDxxOlepgVMyVWDocUpEW3Rlz7
	Brx9qhhXr1DARCH3QaoExTkXiwn+9nIwVQW+amq3kPZpNo0wtMiArTHjcZFjRUVN8Q9s
	x4r1n0XfJ1BRg/pCvnZzydrAkpe7qlZwTMN6F0yvTaoWSrpn6FrdMP7tcHs01s0etq9X
	vyoB7MewTrJWY6vC2QmMb+w9SjkPRjVPrI54/bINjgkmp1xLvmgxFE9x9kCGwWyTpq6z
	N6/A==
X-Gm-Message-State: APjAAAUe1g8NiDSGvfa1JDr4gaflHosrycSxPnUGkPw4Kz7QLBkWWDQ/
	b643VAueVl/KpQC/f74An1w=
X-Google-Smtp-Source: APXvYqwbb+2/P206McEARDR/PpaP7VGFQSLFT8WPG1r9AaOcQVeVBRt8JCgiRpqNZSS57GaRn0zqwg==
X-Received: by 2002:a05:620a:1404:: with SMTP id
	d4mr87093639qkj.228.1564687060980; 
	Thu, 01 Aug 2019 12:17:40 -0700 (PDT)
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca.
	[184.163.105.249]) by smtp.gmail.com with ESMTPSA id
	w25sm29324472qto.87.2019.08.01.12.17.39
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 01 Aug 2019 12:17:40 -0700 (PDT)
Date: Thu, 1 Aug 2019 15:17:39 -0400
Message-ID: <20190801151739.GB32290@t480s.localdomain>
From: Vivien Didelot <vivien.didelot@gmail.com>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
In-Reply-To: <1564055044-27593-1-git-send-email-horatiu.vultur@microchip.com>
References: <1564055044-27593-1-git-send-email-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: nikolay@cumulusnetworks.com, netdev@vger.kernel.org,
	roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	linux-kernel@vger.kernel.org,
	Horatiu Vultur <horatiu.vultur@microchip.com>,
	allan.nielsen@microchip.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH] net: bridge: Allow bridge to joing multicast
	groups
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

Hi Horatiu,

On Thu, 25 Jul 2019 13:44:04 +0200, Horatiu Vultur <horatiu.vultur@microchip.com> wrote:
> There is no way to configure the bridge, to receive only specific link
> layer multicast addresses. From the description of the command 'bridge
> fdb append' is supposed to do that, but there was no way to notify the
> network driver that the bridge joined a group, because LLADDR was added
> to the unicast netdev_hw_addr_list.
> 
> Therefore update fdb_add_entry to check if the NLM_F_APPEND flag is set
> and if the source is NULL, which represent the bridge itself. Then add
> address to multicast netdev_hw_addr_list for each bridge interfaces.
> And then the .ndo_set_rx_mode function on the driver is called. To notify
> the driver that the list of multicast mac addresses changed.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  net/bridge/br_fdb.c | 49 ++++++++++++++++++++++++++++++++++++++++++++++---
>  1 file changed, 46 insertions(+), 3 deletions(-)
> 
> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
> index b1d3248..d93746d 100644
> --- a/net/bridge/br_fdb.c
> +++ b/net/bridge/br_fdb.c
> @@ -175,6 +175,29 @@ static void fdb_add_hw_addr(struct net_bridge *br, const unsigned char *addr)
>  	}
>  }
>  
> +static void fdb_add_hw_maddr(struct net_bridge *br, const unsigned char *addr)
> +{
> +	int err;
> +	struct net_bridge_port *p;
> +
> +	ASSERT_RTNL();
> +
> +	list_for_each_entry(p, &br->port_list, list) {
> +		if (!br_promisc_port(p)) {
> +			err = dev_mc_add(p->dev, addr);
> +			if (err)
> +				goto undo;
> +		}
> +	}
> +
> +	return;
> +undo:
> +	list_for_each_entry_continue_reverse(p, &br->port_list, list) {
> +		if (!br_promisc_port(p))
> +			dev_mc_del(p->dev, addr);
> +	}
> +}
> +
>  /* When a static FDB entry is deleted, the HW address from that entry is
>   * also removed from the bridge private HW address list and updates all
>   * the ports with needed information.
> @@ -192,13 +215,27 @@ static void fdb_del_hw_addr(struct net_bridge *br, const unsigned char *addr)
>  	}
>  }
>  
> +static void fdb_del_hw_maddr(struct net_bridge *br, const unsigned char *addr)
> +{
> +	struct net_bridge_port *p;
> +
> +	ASSERT_RTNL();
> +
> +	list_for_each_entry(p, &br->port_list, list) {
> +		if (!br_promisc_port(p))
> +			dev_mc_del(p->dev, addr);
> +	}
> +}
> +
>  static void fdb_delete(struct net_bridge *br, struct net_bridge_fdb_entry *f,
>  		       bool swdev_notify)
>  {
>  	trace_fdb_delete(br, f);
>  
> -	if (f->is_static)
> +	if (f->is_static) {
>  		fdb_del_hw_addr(br, f->key.addr.addr);
> +		fdb_del_hw_maddr(br, f->key.addr.addr);
> +	}
>  
>  	hlist_del_init_rcu(&f->fdb_node);
>  	rhashtable_remove_fast(&br->fdb_hash_tbl, &f->rhnode,
> @@ -843,13 +880,19 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
>  			fdb->is_local = 1;
>  			if (!fdb->is_static) {
>  				fdb->is_static = 1;
> -				fdb_add_hw_addr(br, addr);
> +				if (flags & NLM_F_APPEND && !source)
> +					fdb_add_hw_maddr(br, addr);
> +				else
> +					fdb_add_hw_addr(br, addr);
>  			}
>  		} else if (state & NUD_NOARP) {
>  			fdb->is_local = 0;
>  			if (!fdb->is_static) {
>  				fdb->is_static = 1;
> -				fdb_add_hw_addr(br, addr);
> +				if (flags & NLM_F_APPEND && !source)
> +					fdb_add_hw_maddr(br, addr);
> +				else
> +					fdb_add_hw_addr(br, addr);
>  			}
>  		} else {
>  			fdb->is_local = 0;
> -- 
> 2.7.4
> 

I'm a bit late in the conversation. Isn't this what you want?

    ip address add <multicast IPv4 address> dev br0 autojoin


Thanks,
Vivien
