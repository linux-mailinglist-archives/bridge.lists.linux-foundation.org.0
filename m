Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B621316424
	for <lists.bridge@lfdr.de>; Wed, 10 Feb 2021 11:45:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 67AB28728E;
	Wed, 10 Feb 2021 10:45:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XX8--2RI+bN8; Wed, 10 Feb 2021 10:45:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id DAA4D8728B;
	Wed, 10 Feb 2021 10:45:56 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B8B47C013A;
	Wed, 10 Feb 2021 10:45:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A2A56C013A
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 10:45:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 82B866F4E9
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 10:45:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NBfPETaDTyXK for <bridge@lists.linux-foundation.org>;
 Wed, 10 Feb 2021 10:45:54 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id C2A496F508; Wed, 10 Feb 2021 10:45:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com
 [209.85.218.52])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5D1276F4E9
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 10:45:53 +0000 (UTC)
Received: by mail-ej1-f52.google.com with SMTP id lg21so3282199ejb.3
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 02:45:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=1rNLXcvXKP3m/fnPThWaXf4M817aZUPGjPuR43utm5Q=;
 b=bQRtat1Xo7i63Co4iAOtYmLAkcqeWBNEsuqqBTZC/sdXBIAuIhxW+yEfTW7tMgqXNR
 NaqrHFZLhkELQZJs+Rxzc6q22fgJ7363f58/IxCP6HhoDlKmUBej3Ud7JVC3V9cSXGem
 M/20hpLtqmJRy0w3i1zTiJH+zAlGzK3m6GyQGGjRlikreB00qh2GmmGAic23HCI1QYq2
 7wWLGrtE2dwuCysbP8+AGFZbanuCLPhXOwBiXqaUzPlZkm2CV1xqkaDh9CWquq87io07
 dKu37qYD14SYEK9H9QJq9UyJdO0odBc/pu/TO6ffraYdMRCrTMr1SUVKvxJ4U+2g8Y/S
 erXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1rNLXcvXKP3m/fnPThWaXf4M817aZUPGjPuR43utm5Q=;
 b=akjMWMFLx9RZmAjFeg/0QWD8znH04mJipGY5f8h43fCV0g8A4d7Rr5eToWti/2wgye
 yz8j1sR9Yg9jQ6qEM10/5mbj2DDEFwcUWU6bRl1BN/Z7PFITlQuwZ+LJBDc0cVAEyaFD
 /aslTszXgCrP4ea5P7z8oxg92fCSTsKsEoH4n+blIi1UMPQhjmacxo5rTV9peMJIGmUu
 RMPfpW8VVlDcazmAEr6UidKtMphnhUPgju8MOaHvn76xKwOfH4gYq1WLcmBXx8BHfuq4
 48Jfoa15zM7NFMAAy2dxsq/rxVP1V7SyxeKMBcLtGV2Q7A17h166GdIJXRIEfi6+JRG0
 0Pog==
X-Gm-Message-State: AOAM531+A11t8MJDvzjDQF1qX3E9M9vj78va3KhQhvDngc3VM75DtUf1
 qjK5QyezxWhSs+qDnqETHWA=
X-Google-Smtp-Source: ABdhPJxgAXMW3rVTYhwx790W2oXXaFQwqENLDhxih4f/pLVMsP5SR1/Wa7g89TQbRB6Uzekt0BcExQ==
X-Received: by 2002:a17:906:4eda:: with SMTP id
 i26mr2229075ejv.467.1612953951473; 
 Wed, 10 Feb 2021 02:45:51 -0800 (PST)
Received: from skbuf (5-12-227-87.residential.rdsnet.ro. [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id c18sm675126edu.20.2021.02.10.02.45.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 02:45:50 -0800 (PST)
Date: Wed, 10 Feb 2021 12:45:49 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <20210210104549.ga3lgjafn5x3htwj@skbuf>
References: <20210210091445.741269-1-olteanv@gmail.com>
 <a8e9284b-f0a6-0343-175d-8c323371ef8d@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a8e9284b-f0a6-0343-175d-8c323371ef8d@nvidia.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, linux-omap@vger.kernel.org,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Ioana Ciornei <ioana.ciornei@nxp.com>, linux-kernel@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Taras Chornyi <tchornyi@marvell.com>, Ido Schimmel <idosch@idosch.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, UNGLinuxDriver@microchip.com,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH v3 net-next 00/11] Cleanup in brport flags
 switchdev offload for DSA
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

On Wed, Feb 10, 2021 at 12:31:43PM +0200, Nikolay Aleksandrov wrote:
> Hi Vladimir,
> Let's take a step back for a moment and discuss the bridge unlock/lock sequences
> that come with this set. I'd really like to avoid those as they're a recipe
> for future problems. The only good way to achieve that currently is to keep
> the PRE_FLAGS call and do that in unsleepable context but move the FLAGS call
> after the flags have been changed (if they have changed obviously). That would
> make the code read much easier since we'll have all our lock/unlock sequences
> in the same code blocks and won't play games to get sleepable context.
> Please let's think and work in that direction, rather than having:
> +	spin_lock_bh(&p->br->lock);
> +	if (err) {
> +		netdev_err(p->dev, "%s\n", extack._msg);
> +		return err;
>  	}
> +
> 
> which immediately looks like a bug even though after some code checking we can
> verify it's ok. WDYT?
> 
> I plan to get rid of most of the br->lock since it's been abused for a very long
> time because it's essentially STP lock, but people have started using it for other
> things and I plan to fix that when I get more time.

This won't make the sysfs codepath any nicer, will it?
