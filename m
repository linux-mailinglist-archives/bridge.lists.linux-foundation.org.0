Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C93319E41
	for <lists.bridge@lfdr.de>; Fri, 12 Feb 2021 13:23:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1216F6F66F
	for <lists.bridge@lfdr.de>; Fri, 12 Feb 2021 12:23:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GPedeCLc3rjw for <lists.bridge@lfdr.de>;
	Fri, 12 Feb 2021 12:23:29 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 937BD6F76F; Fri, 12 Feb 2021 12:23:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id DA2C56F644;
	Fri, 12 Feb 2021 12:23:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B2CEAC013A;
	Fri, 12 Feb 2021 12:23:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BF6EEC013A
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 12:23:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BA3598755E
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 12:23:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E-gIfjsMGnv6 for <bridge@lists.linux-foundation.org>;
 Fri, 12 Feb 2021 12:23:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
 [209.85.218.51])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D2E2C872D4
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 12:23:13 +0000 (UTC)
Received: by mail-ej1-f51.google.com with SMTP id lg21so15204356ejb.3
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 04:23:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=oAkh6JJVyX7ngecxDdQvglBOLyHNnX0FyZZLG8idRao=;
 b=UNezosfMr9+hm0SI9j2bJhhnYuMnPZDZ7UXSFalWY20RPpK4uA+3gwLA+agW5jDe0o
 eXwRsUHVsu6fiFM/z9zkRbkk0qZKWuQTaJzA3McH6mSAgk1C2whm7x2pbcXYOA7ozgNE
 BD40S3X4M56Zry8V7WdWrV7gn1Nd8dE+Lp8t2dwuPr3iw3LqSiLVqNR4jiJbj3d+9A4f
 SOI7PWSpK7o3CDevo7JIWOSIcBtWpsJxciXYan3BS6GytZxqWvyg3ce1xxDoVh5q8Pg6
 kdg3mvRzsawZ+MX3PXBpiGi2HZ51TkHeTx46j86WTzPsaPsRs/H+c2dORSJjRvi1Q81q
 jFNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=oAkh6JJVyX7ngecxDdQvglBOLyHNnX0FyZZLG8idRao=;
 b=WWkUJ4mVxjcaZuw61mZFfiC3AmZULe9SFB4lN+DofkvRIA22gE+1xiCB8JD2+EujU+
 XyaYnUHDUIX8+w9y3YzY5sRh9Fqo/mFWIkxCCbenLtVryCCYRDogd0Tm3FmW7Ckt3o++
 R6Ww6CIM7w9TyvN42R1udpnaKU5snDxVnxfaK5er85MZQsbADl9sqG0t17b49mTSv8bO
 AlRgU8nXW0cZXTHu1RwOY1r8sBxWRWGAtVFgz4lOG3NBVshZxm59oz0jBhECtcFjMQT9
 QajJZIVJ1o4ptF/3snvIqPYi7JPYECO77iq8r1hQoxAGU/fyPafRENV9QVMFBPSe6jZs
 ZRvA==
X-Gm-Message-State: AOAM532lOZb7gBwUfPz8jXglnnFnIPe7iNg0C5EsEf2yzaI0x/sEaZsg
 FSpc9od9U6uWkGML97RgxpI=
X-Google-Smtp-Source: ABdhPJxCV/uDu+B1aZTDEIW0K0r5Aqr9vysmDwZG09Mi9VVfNGYjX2uN5Vt6fOUAEG8Dybn0iNzzbw==
X-Received: by 2002:a17:906:755:: with SMTP id
 z21mr2810355ejb.514.1613132592317; 
 Fri, 12 Feb 2021 04:23:12 -0800 (PST)
Received: from skbuf (5-12-227-87.residential.rdsnet.ro. [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id l25sm464065eja.82.2021.02.12.04.23.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Feb 2021 04:23:10 -0800 (PST)
Date: Fri, 12 Feb 2021 14:23:09 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Message-ID: <20210212122309.ffv6zuhscwtvrhjk@skbuf>
References: <20210212010531.2722925-1-olteanv@gmail.com>
 <20210212010531.2722925-8-olteanv@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210212010531.2722925-8-olteanv@gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Taras Chornyi <tchornyi@marvell.com>, Ido Schimmel <idosch@idosch.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 linux-omap@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH v4 net-next 7/9] net: mscc: ocelot: use
 separate flooding PGID for broadcast
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

On Fri, Feb 12, 2021 at 03:05:29AM +0200, Vladimir Oltean wrote:
> From: Vladimir Oltean <vladimir.oltean@nxp.com>
> 
> In preparation of offloading the bridge port flags which have
> independent settings for unknown multicast and for broadcast, we should
> also start reserving one destination Port Group ID for the flooding of
> broadcast packets, to allow configuring it individually.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> ---

After more testing with the ocelot-8021q tagger too, not just the
default NPI-based one, I noticed that I introduced a regression.

devlink-sb tells me that broadcast packets remain stuck in the ingress
queues of the front-panel ports instead of being forwarded to the CPU.
This is because I forgot this:

-----------------------------[cut here]-----------------------------
 drivers/net/dsa/ocelot/felix.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/dsa/ocelot/felix.c b/drivers/net/dsa/ocelot/felix.c
index 96d9d13c5ae0..2771560cef61 100644
--- a/drivers/net/dsa/ocelot/felix.c
+++ b/drivers/net/dsa/ocelot/felix.c
@@ -299,6 +299,7 @@ static int felix_setup_tag_8021q(struct dsa_switch *ds, int cpu)
 	cpu_flood = ANA_PGID_PGID_PGID(BIT(ocelot->num_phys_ports));
 	ocelot_rmw_rix(ocelot, 0, cpu_flood, ANA_PGID_PGID, PGID_UC);
 	ocelot_rmw_rix(ocelot, 0, cpu_flood, ANA_PGID_PGID, PGID_MC);
+	ocelot_rmw_rix(ocelot, 0, cpu_flood, ANA_PGID_PGID, PGID_BC);
 
 	felix->dsa_8021q_ctx = kzalloc(sizeof(*felix->dsa_8021q_ctx),
 				       GFP_KERNEL);
-----------------------------[cut here]-----------------------------

If there is no other feedback on this series, can I send this as a
follow-up fixup? Thanks.
