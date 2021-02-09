Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 24AC53155FF
	for <lists.bridge@lfdr.de>; Tue,  9 Feb 2021 19:36:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5D9A5868DB;
	Tue,  9 Feb 2021 18:36:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZaQsc6OPJATA; Tue,  9 Feb 2021 18:36:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id DF1B2868F8;
	Tue,  9 Feb 2021 18:36:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C2D1FC013A;
	Tue,  9 Feb 2021 18:36:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3F500C013A
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 18:36:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2312D85BCF
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 18:36:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eFtRYvvl9qlb for <bridge@lists.linux-foundation.org>;
 Tue,  9 Feb 2021 18:36:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com
 [209.85.218.46])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B978F85118
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 18:36:40 +0000 (UTC)
Received: by mail-ej1-f46.google.com with SMTP id f14so33394044ejc.8
 for <bridge@lists.linux-foundation.org>; Tue, 09 Feb 2021 10:36:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=h5l91mm4OgKaf6t4atmXs6oRTo1mGTbQpbu5LCCZIuM=;
 b=PH/c8cc/nyi8SJ24Y6mtv07Cd3UG37HbaCBZFb/gGuIRXMEUpKHmM+2ZUOmF2+nqL9
 9fP2aFSMimwDJ/NO/IJ32fpVaI6KGoscHBMhYZlu/5HDW4stPD0ZoRDcjJ4r3RQCpQsl
 B2Lo76Uupeums/vpHZj1sNYxQyk/Bcp3sb0SLdAcfOXv1PppGyWsE4WqyVJV4FTIu8ST
 qPHdOEJrlLS4mFyXBzjhmThK1mXDcyUEPVPzNmKCBM54ip5fAiecL0pr0Gh6mopToQ6h
 oc3pr+iC3sOvR8LKjxp/EzHVdnrNZpvTAA66NVbpFmesm0FtAvCy+2WUP7htpdG49wUy
 qZUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=h5l91mm4OgKaf6t4atmXs6oRTo1mGTbQpbu5LCCZIuM=;
 b=jtIyjQeqQrfIw7M6urdSnEhs6aoTpnVObfVqD3xboT7UvUvR5St2ft9tHkKwQk+xdf
 nnjeIBoIpeeFnIwRxGi7xd+Z3cyU6Uq/+Wh+j2+0/q0fZGr8+820XHZcu3G1qMQw9kSw
 ghPsyslGJHeYOI0YmJsBulZnZiiq1faDZCWDhrrR3wAXz4RlCLmqoIHCoIzHeOisJK5U
 murpk6KgFcUqm/dFpHihCIWHvicw3TtlmCyqyTRQC5bnmpem2TUJIsI8WyQLt8jiUlUq
 39MiiW7sEBUkbJlKpeXVY5jeLPEuIoxVZskDL9DuY+vSvQNsPSHOSI8E4+ClRpVT2FhB
 VqPw==
X-Gm-Message-State: AOAM531MwWRuPcxpKvk9N95EacV/rY/TQfg2fQQmyEXbs7/oEyK/3ola
 Y2+zNMtt57LIPstZxk7HXPI=
X-Google-Smtp-Source: ABdhPJyoe3o/Na0RHyb9qfjkzfhKzq1xxSdMlcvobWLsw4nkDyluOrrgDInbafWA2lB0jkXYy2Os2Q==
X-Received: by 2002:a17:906:2ccb:: with SMTP id
 r11mr24291107ejr.39.1612895798802; 
 Tue, 09 Feb 2021 10:36:38 -0800 (PST)
Received: from skbuf (5-12-227-87.residential.rdsnet.ro. [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id p32sm5666584edd.96.2021.02.09.10.36.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 10:36:37 -0800 (PST)
Date: Tue, 9 Feb 2021 20:36:36 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Message-ID: <20210209183636.l5h4zyknk5q4kvgl@skbuf>
References: <20210209151936.97382-1-olteanv@gmail.com>
 <20210209151936.97382-3-olteanv@gmail.com>
 <20210209182724.b4funpoqh6kgoj6z@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210209182724.b4funpoqh6kgoj6z@skbuf>
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
Subject: Re: [Bridge] [PATCH v2 net-next 02/11] net: bridge: offload all
 port flags at once in br_setport
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

On Tue, Feb 09, 2021 at 08:27:24PM +0200, Vladimir Oltean wrote:
> But there's an interesting side effect of allowing
> br_switchdev_set_port_flag to run concurrently (notifier call chains use
> a rw_semaphore and only take the read side). Basically now drivers that
> cache the brport flags in their entirety are broken, because there isn't
> any guarantee that bits outside the mask are valid any longer (we can
> even enforce that by masking the flags with the mask when notifying
> them). They would need to do the same trick of updating just the masked
> part of their cached flags. Except for the fact that they would need
> some sort of spinlock too, I don't think that the basic bitwise
> operations are atomic or anything like that. I'm a bit reluctant to add
> a spinlock in prestera, rocker, mlxsw just for this purpose. What do you
> think?

My take on things is that I can change those drivers to do what ocelot
and sja1105 do, which is to just have some bool values like this:

	if (flags.mask & BR_LEARNING)
		ocelot_port->learn_ena = !!(flags.val & BR_LEARNING);

which eliminates concurrency to the shared unsigned long brport_flags
variable. No locking, no complications.
