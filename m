Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E042431A0C5
	for <lists.bridge@lfdr.de>; Fri, 12 Feb 2021 15:41:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8197E6F762
	for <lists.bridge@lfdr.de>; Fri, 12 Feb 2021 14:41:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9KvrSEY9VSkr for <lists.bridge@lfdr.de>;
	Fri, 12 Feb 2021 14:41:12 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 3117C6F77D; Fri, 12 Feb 2021 14:41:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id 399106F677;
	Fri, 12 Feb 2021 14:41:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0F4B3C1834;
	Fri, 12 Feb 2021 14:41:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0059DC013A
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 14:41:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D51C26F644
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 14:41:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wpf1A5476hj0 for <bridge@lists.linux-foundation.org>;
 Fri, 12 Feb 2021 14:40:59 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id D6F8B6F677; Fri, 12 Feb 2021 14:40:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
 [209.85.208.44])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A86116F644
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 14:40:57 +0000 (UTC)
Received: by mail-ed1-f44.google.com with SMTP id s11so11159220edd.5
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 06:40:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=XtDi0MBEwrkwGMq8hjer8LJhgp1YzuDVXdwRv+z+ZLg=;
 b=iU1Inb9VFPF3NTBWyuFt6Kixh9kNctCuRZ8NktXv+oGPVDU1I/FlflMtneS10uKAUK
 oF0dl1800p0nfL+bbVbQcopyUhiqeXZmLaI9JJKMq+/zjImrrET8rwUhkZSjdINFRamr
 8hTlIzp2yCEsDch2VLZKAEOxuv3tf/Ykl8bZJ1vFgypXxJTp+k0yl6kqqi3fBoDog8fT
 M96MdnPkx/mCj6V9E2qiAx0Y8LrvQeD40bm0+8os6PbXuyk+8tysKSyfWQ86SwsqHDa9
 HKLNRWPefZFLAUoMiJFb/ohwJX86qEvK9YhooOWY1EvVtvn9UtC/IS3DbsDJIW18LRw2
 dILg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XtDi0MBEwrkwGMq8hjer8LJhgp1YzuDVXdwRv+z+ZLg=;
 b=DJf0cd3DLUzw3MJO9q6LJG2RGlrOMTUAAQzvQCzjTagZ7luyPMJ7vQb/GUDWVNu3VY
 P7bmfDlnjeKE+NyZldHjNRCOPJKq0gPsAYiWMqC5KUhsyU0PAnen9XUbmRh+ODzpxZrW
 yCJWfZEkyE4zRYQkAmoiPXvS0rdXIPY5PocAUjlmwuCmZbUT13lEVaYjtHP/efJ7nKp9
 HhCbPjl0Of/QBglNx2eWrYWxk4PUPQyqGGqqUVbPHIbxjTlIDwtMyQDkpqb5RDtpV+qv
 4HYLCNlQDBnyrUh28zEzCfGU2hDXwAN5FaBSEkxP6syX3Xb5J/HnWA4iEmw5JAbdOLeh
 D2nQ==
X-Gm-Message-State: AOAM530zSfF9+mo4+7egnDsQ5567o+aNJDR9SkLRsQ93rMxovZk8Mbs5
 gi+VphaO2aqpp02vbEnt1gM=
X-Google-Smtp-Source: ABdhPJz+AXgLzH7mgMsrvooJIgmH23vOS4s5UyRQEU9NhLWKLE+tLUwEiOQNPD5zc+uaUI5o8ANfjA==
X-Received: by 2002:a05:6402:1113:: with SMTP id
 u19mr3621498edv.205.1613140855639; 
 Fri, 12 Feb 2021 06:40:55 -0800 (PST)
Received: from skbuf (5-12-227-87.residential.rdsnet.ro. [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id h15sm6271339ejj.43.2021.02.12.06.40.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Feb 2021 06:40:54 -0800 (PST)
Date: Fri, 12 Feb 2021 16:40:53 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <20210212144053.2pumwc6mlt4l2gcj@skbuf>
References: <20210212010531.2722925-1-olteanv@gmail.com>
 <97ae293a-f59d-cc7c-21a6-f83880c69c71@ti.com>
 <ba7350f1-f9ff-b77e-65c9-cd5a4ae652d8@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ba7350f1-f9ff-b77e-65c9-cd5a4ae652d8@ti.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, linux-omap@vger.kernel.org,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Ioana Ciornei <ioana.ciornei@nxp.com>, linux-kernel@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Taras Chornyi <tchornyi@marvell.com>, Ido Schimmel <idosch@idosch.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, UNGLinuxDriver@microchip.com,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH v4 net-next 0/9] Cleanup in brport flags
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

On Fri, Feb 12, 2021 at 08:01:33PM +0530, Vignesh Raghavendra wrote:
> Hi Vladimir,
> 
> On 2/12/21 7:47 PM, Grygorii Strashko wrote:
> > 
> > 
> > On 12/02/2021 03:05, Vladimir Oltean wrote:
> >> From: Vladimir Oltean <vladimir.oltean@nxp.com>
> [...]
> > 
> > Sorry, but we seems just added more work for you.
> > https://lore.kernel.org/patchwork/cover/1379380/
> > 
> 
> Could you squash these when you post new version:
> Sorry for not noticing earlier.

Hey, thanks for the fixup patch and congrats on the new driver support
for the AM65 NUSS! What's functionally different compared to the other
CPSW instantiations?

Also, do I get it right that you also tested the bridge port flags
passed in the new format and that they still work ok? May I add your
Tested-by tag?
