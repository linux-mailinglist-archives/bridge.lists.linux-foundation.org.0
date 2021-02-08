Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A48313131
	for <lists.bridge@lfdr.de>; Mon,  8 Feb 2021 12:45:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9E5EA85C00;
	Mon,  8 Feb 2021 11:45:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nwGakMb8v3uQ; Mon,  8 Feb 2021 11:45:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2E3F185BEE;
	Mon,  8 Feb 2021 11:45:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0CB83C1DA9;
	Mon,  8 Feb 2021 11:45:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ACA9EC013A
 for <bridge@lists.linux-foundation.org>; Mon,  8 Feb 2021 11:45:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9969A20762
 for <bridge@lists.linux-foundation.org>; Mon,  8 Feb 2021 11:45:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7x82xaWzVA9D for <bridge@lists.linux-foundation.org>;
 Mon,  8 Feb 2021 11:45:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
 [209.85.208.45])
 by silver.osuosl.org (Postfix) with ESMTPS id C1275207A1
 for <bridge@lists.linux-foundation.org>; Mon,  8 Feb 2021 11:45:15 +0000 (UTC)
Received: by mail-ed1-f45.google.com with SMTP id s3so17661550edi.7
 for <bridge@lists.linux-foundation.org>; Mon, 08 Feb 2021 03:45:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=9pa9egMr6HuhpySJFZ922xtVve+4BTGS+NR78QDKpmA=;
 b=seQRViNZMkrvWnMY2i5wu0KjU3Wfsa+YhEAmbH7bVQjptTdGrXj0iOCqBY5XKau/lF
 Fs6TSVcEXddjrKILQYYbay7a9toHDoY9DBU+TLWLtsuVkuCdg6JViiburY0hin1OAEmU
 1MiOtEiCM2VWB7DT+mIUqRAoLLJXtDyBXAZr3ZXgzYTn3iIX4yDV/W1YfaNuawtMsEbT
 vpTQmnP6PafDQm+rcOeJ9sR870pMYmcrCx/NjxVJcXADl1+xXNjxX753OYJfdC1vXYrd
 C8u4HzVz7JmTKuyDdNNPjy1XV8pOqXmXrfRz/Tq/CIpYvkwIDGo1ASNYEtjLBc32+u5K
 Kw+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9pa9egMr6HuhpySJFZ922xtVve+4BTGS+NR78QDKpmA=;
 b=Vu66hejEgF0EXl6Zwm1Hp/xSD8F0eMlUnnKiZJNB9723srDBNB9hts5/d1QmZI/AgM
 eHDYrBDxhnDIhqi5Gq6MYyIS7aDA4i3PduJBGGwLeKXB66HZ2tywcC8UjZ18ALlUdG3T
 3hABrrQt+f5724KiGe1F+TlxUNBsrcZKpzIJkLLhFg9JvcNngVSWQoToLYaes/oBT+RY
 otIA/aY/+ZGlNxtWDUH8w8H6sKXM3veEFZZr8fFqRyC83+v0laUaLKw9bSPA2i/xLSuz
 lGRAPC5LlnZQw3SfS8TCkzTuPd1Ha5ejTRWHdrwO4NXyljr8ASPeKotnj/lYh2nzpji6
 RzTQ==
X-Gm-Message-State: AOAM530xuhXkXn/MA74MQNNu+5K/15TS+4rhC8Q3dAz3hirLwUobKvd3
 MGM6e2A/mB4x+iuzdEQFlsY=
X-Google-Smtp-Source: ABdhPJx6eGBesZL3QRG6VDx3qwW880GGzzgdxNQvaQ8IPb48/VTGhgJQZMuC4y1f5IqUAo/uMr0ZAw==
X-Received: by 2002:a05:6402:149a:: with SMTP id
 e26mr17017083edv.254.1612784714113; 
 Mon, 08 Feb 2021 03:45:14 -0800 (PST)
Received: from skbuf (5-12-227-87.residential.rdsnet.ro. [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id b3sm9426102edw.14.2021.02.08.03.45.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Feb 2021 03:45:13 -0800 (PST)
Date: Mon, 8 Feb 2021 13:45:11 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <20210208114511.xtzma5byrdnr5s7r@skbuf>
References: <20210207232141.2142678-1-olteanv@gmail.com>
 <20210207232141.2142678-3-olteanv@gmail.com>
 <95dede91-56aa-1852-8fbf-71d446fa7ede@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <95dede91-56aa-1852-8fbf-71d446fa7ede@nvidia.com>
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
Subject: Re: [Bridge] [PATCH net-next 2/9] net: bridge: offload initial and
 final port flags through switchdev
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

On Mon, Feb 08, 2021 at 01:37:03PM +0200, Nikolay Aleksandrov wrote:
> Hi Vladimir,
> I think this patch potentially breaks some use cases. There are a few problems, I'll
> start with the more serious one: before the ports would have a set of flags that were
> always set when joining, now due to how nbp_flags_change() handles flag setting some might
> not be set which would immediately change behaviour w.r.t software fwding. I'll use your
> example of BR_BCAST_FLOOD: a lot of drivers will return an error for it and any broadcast
> towards these ports will be dropped, we have mixed environments with software ports that
> sometimes have traffic (e.g. decapped ARP requests) software forwarded which will stop working.

Yes, you're right. The only solution I can think of is to add a "bool ignore_errors"
to nbp_flags_change, set to true from new_nbp and del_nbp, and to false from the
netlink code.

> The other lesser issue is with the style below, I mean these three calls for each flag are
> just ugly and look weird as you've also noted, since these APIs are internal can we do better?

Doing better would mean allowing nbp_flags_change() to have a bit mask with
potentially more brport flags set, and to call br_switchdev_set_port_flag in
a for_each_set_bit() loop?
