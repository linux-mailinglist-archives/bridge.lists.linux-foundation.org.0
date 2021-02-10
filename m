Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3EFF3163AE
	for <lists.bridge@lfdr.de>; Wed, 10 Feb 2021 11:23:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 79EB487278;
	Wed, 10 Feb 2021 10:23:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PyLZck-PXR7z; Wed, 10 Feb 2021 10:23:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 46CC787270;
	Wed, 10 Feb 2021 10:23:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2E48AC013A;
	Wed, 10 Feb 2021 10:23:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BE2B4C013A
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 10:23:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B979887270
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 10:23:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D9GJZT1o3l3r for <bridge@lists.linux-foundation.org>;
 Wed, 10 Feb 2021 10:23:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com
 [209.85.218.44])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8EB4A87263
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 10:23:31 +0000 (UTC)
Received: by mail-ej1-f44.google.com with SMTP id a9so3164194ejr.2
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 02:23:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=QQ6ibbCKatXHbmogp1EYUWCfgYRqjn+iKPBMKIlVQ9Y=;
 b=OkJLE9Z6va0hGpYeZtIu0b6Wy37PWF448S8/SjiY1YwifTyTSCGyrf8vP3VuzJhXd1
 BKN95vIGZ0/+gbavKal1KBQKQdB3ZaRKur+vj8sqClkSST3DEdCtAtwirYgQUdQ58+Dc
 pthI/LlvvBEWvwPtcsKOLF8FPsPT1Kr0SBfl3uQZEqjdnKGZqenIo5nneu+75/k9NCZ8
 gGQAESEpycLRXJpav6xndQBQlyVKQ1TuBqZI3SBkRN5q2teM1/dNOJXeqK4FUh7avo26
 6FKcCdariok/z2pdUMdr2L4ysXMcBTnVzieWTdRKyENiEY7tgAhbEbwibXo5bTffHb+8
 zLDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=QQ6ibbCKatXHbmogp1EYUWCfgYRqjn+iKPBMKIlVQ9Y=;
 b=sW5Ax2TyM1f8xJx/piheFBtT0hp/C72AIFm3w/ooCefOz2hsBW0o2J4nskC59CgLCC
 sQZQ2urcJIg0aNF0MpIwKTjyRYOtLD2s3VyKhAXfPdD2fql3ZbIXidjdMCLYVk2C6yhh
 KGSy/ABHMg/iSfcP0yAKeInyjbsy/gY8+efcyzb1jPZi2mxAf8VSWEqhNr4DVdorhoJU
 JZE6iPk14Enkebe/tOy0Ad/2PdsBp9yRMnK3F3eZMwq6rvEYwSx772aoH1CGrykp6Yz9
 I+gWYuWhKuZj5jziQ8YwXrsMIyVcGaaNBZFel7Kj07aqv5XMD+6ZvqzU4NsT4rItpbGB
 SbAA==
X-Gm-Message-State: AOAM533lOUq/nX500qTuBx++5/2HALSWPriehrNRei7G8i/AAgLmlJyO
 ZyZphsGr7pPKLMQvU2AEiso=
X-Google-Smtp-Source: ABdhPJw2FGF6YWFnpCNhD/33aoau3KgLTwQFsjmdbteKV+TtEEpI1WvYjNKHm2SDYZnTS8CgonhE3A==
X-Received: by 2002:a17:906:ecb6:: with SMTP id
 qh22mr2311964ejb.252.1612952610145; 
 Wed, 10 Feb 2021 02:23:30 -0800 (PST)
Received: from skbuf (5-12-227-87.residential.rdsnet.ro. [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id q16sm801100ejd.39.2021.02.10.02.23.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 02:23:29 -0800 (PST)
Date: Wed, 10 Feb 2021 12:23:28 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Ido Schimmel <idosch@idosch.org>
Message-ID: <20210210102328.7jpzlobpwotdo63z@skbuf>
References: <20210210091445.741269-1-olteanv@gmail.com>
 <20210210091445.741269-8-olteanv@gmail.com>
 <20210210101257.GA287766@shredder.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210210101257.GA287766@shredder.lan>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, linux-omap@vger.kernel.org,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Ioana Ciornei <ioana.ciornei@nxp.com>, linux-kernel@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Taras Chornyi <tchornyi@marvell.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, UNGLinuxDriver@microchip.com,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH v3 net-next 07/11] net: prep switchdev drivers
 for concurrent SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS
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

On Wed, Feb 10, 2021 at 12:12:57PM +0200, Ido Schimmel wrote:
> On Wed, Feb 10, 2021 at 11:14:41AM +0200, Vladimir Oltean wrote:
> > From: Vladimir Oltean <vladimir.oltean@nxp.com>
> > 
> > Because the bridge will start offloading SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS
> > while not serialized by any lock such as the br->lock spinlock, existing
> > drivers that treat that attribute and cache the brport flags might no
> > longer work correctly.
> 
> Can you explain the race? This notification is sent from sysfs/netlink
> call path, both of which take rtnl.

Replying here to both you and Nikolay: there isn't any race, sorry, I
missed the fact that brport_store takes the rtnl_mutex and by extension
I thought that RTM_SETLINK runs unlocked too, without really checking.
Well, at least that's good news, the implementation can be a lot more
straightforward then...
