Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A3011A0FD
	for <lists.bridge@lfdr.de>; Wed, 11 Dec 2019 03:02:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D43C086C2E;
	Wed, 11 Dec 2019 02:02:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k9wDKC2IHhHY; Wed, 11 Dec 2019 02:02:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5D45086C3E;
	Wed, 11 Dec 2019 02:02:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1F65FC1797;
	Wed, 11 Dec 2019 02:02:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B09BDC0881
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 02:02:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ABB3A228E2
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 02:02:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LGQ92HIblkzr for <bridge@lists.linux-foundation.org>;
 Wed, 11 Dec 2019 02:02:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f67.google.com (mail-qv1-f67.google.com
 [209.85.219.67])
 by silver.osuosl.org (Postfix) with ESMTPS id B4894204C8
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 02:02:06 +0000 (UTC)
Received: by mail-qv1-f67.google.com with SMTP id o18so5088676qvf.1
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 18:02:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:message-id:from:to:cc:subject:in-reply-to:references
 :mime-version:content-disposition:content-transfer-encoding;
 bh=hnNNPiH+0knQ/mTzZcYqFPWlCiT6PxlNTbmMZNe9cuI=;
 b=CI3y8NjAcg4RuMdoysRTliQdCeFvnlTn3p4r4x7yyAAOTht5S99FivoTPRLD2MDFgo
 yxxfP8bkP5M783hKAt0Y2mE0zBxFbKk5T+qtv//4r0NWBgGg7CbWnkFyXo76JY/3ir98
 ZaFXjOWNpKYKsviYRW5E4Mkvf7a0PxmZbCcyIL28oecPLTlC6T4BOvPZVlyOA2tc7AMQ
 2UK02IKwVa/8SuWn7sKGQNMX0q9z5btI9udvmazi4E7UBDsUnf0Cijw+m9a7qRNsZ29r
 BQJDqPg60OSZkIkh9p9o+0px5NEz9Tp4MhGVpG2Bc+rpIgZDrNTPXQoROmm3drwsvH1i
 ac2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:from:to:cc:subject:in-reply-to
 :references:mime-version:content-disposition
 :content-transfer-encoding;
 bh=hnNNPiH+0knQ/mTzZcYqFPWlCiT6PxlNTbmMZNe9cuI=;
 b=o8akyjn8meOo5UdWHuAkQc5WPYsdHrNy+m4RGjMEktIyTwy8LwazhSgDx7AjR2BuVJ
 Et4u0X4qQBs2fY/DXDwWuOHkV3SJ7dwJV2FBp2qgNbahVd/JrKE++d4NbAlIRoG06nFv
 roGX6qLymSSfX4GMZ2Ike1YSSNZAGPy9tewziHKKxgdA6pXscO34vJ9VLVvCEvuYJ9yW
 GjVZvDDJJB9CK6flbCQcz8YXxxBe9Ftn13YHA8d3rxNw7ax6ZeO2gQkPsVNrp7WxzoH7
 M9aowh8A9Hr1msROo5onhHosWnXey75V/b0ZeDscEmIHhIeD5aE9vNOdVFvCAbIYhyUj
 5RSQ==
X-Gm-Message-State: APjAAAVL0PA7iA+G1rLwx9L+4txcROiB4+LqOrVmWpq4p9GIUGOl/TbN
 58RZ7fqAp0t6CP8WjjDqjzM=
X-Google-Smtp-Source: APXvYqySIaUEAShOwMQtJMFxIMCwEiclUKMGXfuVcM+sbrtE7tZdTWcWpaiYsp87aE34pSfNl+tZ4g==
X-Received: by 2002:a05:6214:3a1:: with SMTP id m1mr808145qvy.77.1576029725576; 
 Tue, 10 Dec 2019 18:02:05 -0800 (PST)
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca.
 [184.163.105.249])
 by smtp.gmail.com with ESMTPSA id 184sm167242qke.73.2019.12.10.18.02.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 18:02:04 -0800 (PST)
Date: Tue, 10 Dec 2019 21:02:03 -0500
Message-ID: <20191210210203.GB1480973@t480s.localdomain>
From: Vivien Didelot <vivien.didelot@gmail.com>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
In-Reply-To: <30e93cfb-cc2c-c484-a743-479cce19d8a9@cumulusnetworks.com>
References: <20191210212050.1470909-1-vivien.didelot@gmail.com>
 <30e93cfb-cc2c-c484-a743-479cce19d8a9@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Cc: netdev@vger.kernel.org, Roopa Prabhu <roopa@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next v2] net: bridge: add STP xstats
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Hi Nikolay,

On Tue, 10 Dec 2019 23:45:13 +0200, Nikolay Aleksandrov <nikolay@cumulusnetworks.com> wrote:
> > +	if (p) {
> > +		nla = nla_reserve_64bit(skb, BRIDGE_XSTATS_STP,
> > +					sizeof(p->stp_xstats),
> > +					BRIDGE_XSTATS_PAD);
> > +		if (!nla)
> > +			goto nla_put_failure;
> > +
> > +		memcpy(nla_data(nla), &p->stp_xstats, sizeof(p->stp_xstats));
> 
> You need to take the STP lock here to get a proper snapshot of the values.

Good catch! I see a br->multicast_lock but no br->stp_lock. Is this what
you expect?

    spin_lock_bh(&br->lock);
    memcpy(nla_data(nla), &p->stp_xstats, sizeof(p->stp_xstats));
    spin_unlock_bh(&br->lock);


Thanks,

	Vivien
