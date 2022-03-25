Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E656E4E74A2
	for <lists.bridge@lfdr.de>; Fri, 25 Mar 2022 15:00:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63A1941D33;
	Fri, 25 Mar 2022 14:00:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b1DWd-rgAwoB; Fri, 25 Mar 2022 14:00:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 0A66341D31;
	Fri, 25 Mar 2022 14:00:11 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CBF36C0073;
	Fri, 25 Mar 2022 14:00:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1A5D4C0012
 for <bridge@lists.linux-foundation.org>; Fri, 25 Mar 2022 14:00:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 054B94100C
 for <bridge@lists.linux-foundation.org>; Fri, 25 Mar 2022 14:00:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JhYZoaDPY93F for <bridge@lists.linux-foundation.org>;
 Fri, 25 Mar 2022 14:00:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DCCD8404AF
 for <bridge@lists.linux-foundation.org>; Fri, 25 Mar 2022 14:00:08 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id pv16so15628150ejb.0
 for <bridge@lists.linux-foundation.org>; Fri, 25 Mar 2022 07:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=E3/UBDuXc/UMmAXiWRPwW4yrgBs5CuzWGxqSCJFk/HA=;
 b=jWTwiuS5J1LrH6cNNWJ4K0NyE7bDgt9LgcQhvS3W40AjSY7EmaEqafmoyHMSa3VizF
 VoEWDjJDMheSWhOWi+x5jJN2F5AFrOL/bVupo+noUKAbAoVJHeVH+wqHRazBsqnbCIH8
 QKhnL2aSKn5nuHFty6ORYnsb7WsnVurJYPxNIjZcxTJPb4GqhBgc7Qcn7reHuH7jxI+M
 wKHfKCOBuNk69pCNkRVrQ6s5keW2Wl49PGXgCkAzapgAW2/cNVJZcMNtc8xUxclNd28F
 459h0EbhHdNZUZ+rohyB+u+7hR+x1bq5oZMWVyxwy5M3W7SWdewbgV9mY7tEFZbE/dCa
 0kdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=E3/UBDuXc/UMmAXiWRPwW4yrgBs5CuzWGxqSCJFk/HA=;
 b=3NP15y9z1Wy/KwZxESdVxnWOIDfk3MMzs+OV+THttostmgmBlerPbmpUS9m2XxabK6
 WHEbD96rjo9Ww6pn/JmdC6inOypjdea8x8VLieSh2l+NrVNV245zOpmJ2sdh6NlEZynb
 9WZhc77bGaXTZTKcMB5qqR1qn0LOCPEaPLno5QLf990ox8ZUGjPP/dbhBXM23LMcEIS9
 fPGf5ssLru09B3cLcVxB1yQy2A08Vhjco5p9XwvQ2z+9x2OvjL5HIeU13XAxWewHw9Jn
 zzy8o6TH0qWwlSYQe8iKQLFO9lLIt/AtFFB1TmCPMXXMU+TYuk5XB/OSSSneyqD7fiu9
 CO7g==
X-Gm-Message-State: AOAM530q/5zslY7SpZ5jIx8cfOVhDM9XefM1lwA+q9htqMZOhffiZ5Ze
 GKoSpPwvvu4psxDPbhG6UfU=
X-Google-Smtp-Source: ABdhPJyc2AGROsTgH7tBlOTLHPM9gCauyoGQNJXHixZDBfPKeV6KEk95m7F6VkXZKLLztYxtxjTSJw==
X-Received: by 2002:a17:907:9956:b0:6b9:a6d9:a535 with SMTP id
 kl22-20020a170907995600b006b9a6d9a535mr11905555ejc.64.1648216806904; 
 Fri, 25 Mar 2022 07:00:06 -0700 (PDT)
Received: from skbuf ([188.26.57.45]) by smtp.gmail.com with ESMTPSA id
 z1-20020a05640235c100b004192c7266f5sm2840616edc.16.2022.03.25.07.00.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Mar 2022 07:00:06 -0700 (PDT)
Date: Fri, 25 Mar 2022 16:00:03 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <20220325140003.a4w4hysqbzmrcxbq@skbuf>
References: <20220323123534.i2whyau3doq2xdxg@skbuf> <86wngkbzqb.fsf@gmail.com>
 <20220323144304.4uqst3hapvzg3ej6@skbuf> <86lewzej4n.fsf@gmail.com>
 <20220324110959.t4hqale35qbrakdu@skbuf> <86v8w3vbk4.fsf@gmail.com>
 <20220324142749.la5til4ys6zva4uf@skbuf> <86czia1ned.fsf@gmail.com>
 <20220325132102.bss26plrk4sifby2@skbuf> <86fsn6uoqz.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <86fsn6uoqz.fsf@gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 2/4] net: switchdev: add support
 for offloading of fdb locked flag
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

On Fri, Mar 25, 2022 at 02:48:36PM +0100, Hans Schultz wrote:
> > If you'd cache the locked ATU entry in the mv88e6xxx driver, and you'd
> > notify switchdev only if the entry is new to the cache, then you'd
> > actually still achieve something major. Yes, the bridge FDB will contain
> > locked FDB entries that aren't in the ATU. But that's because your
> > printer has been silent for X seconds. The policy for the printer still
> > hasn't changed, as far as the mv88e6xxx, or bridge, software drivers are
> > concerned. If the unauthorized printer says something again after the
> > locked ATU entry expires, the mv88e6xxx driver will find its MAC SA
> > in the cache of denied addresses, and reload the ATU. What this
> > achieves
> 
> The driver will in this case just trigger a new miss violation and add
> the entry again I think.
> The problem with all this is that a malicious attack that spams the
> switch with random mac addresses will be able to DOS the device as any
> handling of the fdb will be too resource demanding. That is why it is
> needed to remove those fdb entries after a time out, which dynamic
> entries would serve.

An attacker sweeping through the 2^47 source MAC address range is a
problem regardless of the implementations proposed so far, no?
If unlimited growth of the mv88e6xxx locked ATU entry cache is a
concern (which it is), we could limit its size, and when we purge a
cached entry in software is also when we could emit a
SWITCHDEV_FDB_DEL_TO_BRIDGE for it, right?
