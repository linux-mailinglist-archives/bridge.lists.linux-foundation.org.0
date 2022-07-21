Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EEA857CA37
	for <lists.bridge@lfdr.de>; Thu, 21 Jul 2022 14:05:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3F8E8477C;
	Thu, 21 Jul 2022 12:05:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3F8E8477C
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=BydaKhLB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lxcEZnX3hxjR; Thu, 21 Jul 2022 12:05:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 45FC88476D;
	Thu, 21 Jul 2022 12:05:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 45FC88476D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E207CC007D;
	Thu, 21 Jul 2022 12:05:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A2735C002D
 for <bridge@lists.linux-foundation.org>; Thu, 21 Jul 2022 12:05:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6E2E140635
 for <bridge@lists.linux-foundation.org>; Thu, 21 Jul 2022 12:05:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E2E140635
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=BydaKhLB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AOs3UPUjUDW5 for <bridge@lists.linux-foundation.org>;
 Thu, 21 Jul 2022 12:05:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7F7640135
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D7F7640135
 for <bridge@lists.linux-foundation.org>; Thu, 21 Jul 2022 12:05:05 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id k30so1855610edk.8
 for <bridge@lists.linux-foundation.org>; Thu, 21 Jul 2022 05:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=hIRt+5psI0fBlG5c+/n/fiysz1qxRkLBoG/4SrkuiJE=;
 b=BydaKhLBRJp/iFzlps/w0ZfZuBS13oz1Ki8ce73VFVSQ6ccbqnmDkqzWL0VtZkitXs
 0RJYQEvWSAhg8BqpEvOOamDiStCjLC/ap9H1jJ1MGsJvT6B4XsOx06wONHzbha5m/ti+
 OgG8QPt+bqnTQq1BO/7l8t4FOeE06spuZy7zEo7wxDrf3JH5r3hHNco4PYXzf7mLI4xo
 G2DLu348tvSB46WOk01bqLu+V95p9/iF27DE1UUGSjW8+HQQT7megPPKwRGShoDxE6tp
 k2HaStBJYxL/pMtg+yNkMKIIxcapAjD3gSuCp9xRv6vkPqIlUZyRm2IOBae59CQCioai
 OkRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hIRt+5psI0fBlG5c+/n/fiysz1qxRkLBoG/4SrkuiJE=;
 b=mW2m3sNeE474x7m3x+gxTt3Y/ulj0hRDhyHwzEmLrCYZW7n8yCFryoS0abG3LBFDpJ
 05Ts04qSiQfSYwR5CsjNW0ay63XBMwCvGWgvy5VCmHEJR3SVphLNIx0ke0f93Rykfb/b
 5/ZJgrdQ3WOYMrFjx53eq6F4HYWU6ADwN8KtjGyT4z/Jn0sTkwD56jgcFYRjRY9P9brq
 vbyqPG+RzjXpLsdF6T5t518efCYjKmlT0FfTL5thbUTptGFORqqo35vih1xL+AQHOV5U
 JJO5ZJcvzBlSv2cnzuLno3DtS0KC0+D6XJT6MXVxUAg3e+iab3XLZmwT8o3RPEHlFyYF
 nSpw==
X-Gm-Message-State: AJIora+DRnclRRLY9Lg3SXbZR36KZ/hhRamdItEelfuPMq+UHS/kf0w2
 5JJ+iV/Qm5kB3xeTyIABJqw=
X-Google-Smtp-Source: AGRyM1u86Jc71UcjZn1r3mvoQuqtJZrsDnH+UAYVN0SB5I9lwYjOKEs+fAzJCcEJFejXlVzpoGOeEw==
X-Received: by 2002:a05:6402:484:b0:43b:6e02:71af with SMTP id
 k4-20020a056402048400b0043b6e0271afmr22964119edv.176.1658405103949; 
 Thu, 21 Jul 2022 05:05:03 -0700 (PDT)
Received: from skbuf ([188.25.231.115]) by smtp.gmail.com with ESMTPSA id
 e11-20020a056402148b00b0043a43fcde13sm897574edv.13.2022.07.21.05.05.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Jul 2022 05:05:02 -0700 (PDT)
Date: Thu, 21 Jul 2022 15:04:59 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@kapio-technology.com
Message-ID: <20220721120459.x6mm4coeoe4ecjfv@skbuf>
References: <20220707152930.1789437-1-netdev@kapio-technology.com>
 <20220707152930.1789437-6-netdev@kapio-technology.com>
 <20220717004725.ngix64ou2mz566is@skbuf>
 <3918e3d1a8b78dedc14b950ba1eee8d5@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3918e3d1a8b78dedc14b950ba1eee8d5@kapio-technology.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v4 net-next 5/6] net: dsa: mv88e6xxx:
 mac-auth/MAB implementation
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

On Sun, Jul 17, 2022 at 02:34:22PM +0200, netdev@kapio-technology.com wrote:
> > If I were to randomly guess at almost 4AM in the morning, it has to do with
> > "bridge fdb add" rather than the "bridge fdb replace" that's used for
> > the MAB selftest. The fact I pointed out a few revisions ago, that MAB
> > needs to be opt-in, is now coming back to bite us. Since it's not
> > opt-in, the mv88e6xxx driver always creates locked FDB entries, and when
> > we try to "bridge fdb add", the kernel says "hey, the FDB entry is
> > already there!". Is that it?
> 
> Yes, that sounds like a reasonable explanation, as it adds 'ext learned,
> offloaded' entries. If you try and replace the 'add' with 'replace' in those
> tests, does it work?

Well, you have access to the selftests too... But yes, that is the
reason, and it works when I change 'add' to 'replace', although of
course this isn't the correct solution.

> > As for how to opt into MAB. Hmm. MAB seems to be essentially CPU
> > assisted learning, which creates locked FDB entries. I wonder whether we
> > should reconsider the position that address learning makes no sense on
> > locked ports, and say that "+locked -learning" means no MAB, and
> > "+locked +learning" means MAB? This would make a bunch of things more
> > natural to handle in the kernel, and would also give us the opt-in we
> > need.
> 
> I have done the one and then the other. We need to have some final decision
> on this point. And remember that this gave rise to an extra patch to fix
> link-local learning if learning is turned on on a locked port, which
> resulted in the decision to allways have learning off on locked ports.

I think part of the reason for the back-and-forth was not making a very
clear distinction between basic 802.1X using hostapd, and MAB. While I
agree hostapd doesn't have what to do with learning, for MAB I'm still
wondering. It's the same situation for mv88e6xxx's Port Association
Vector in fact.

> > Side note, the VTU and ATU member violation printks annoy me so badly.
> > They aren't stating something super useful and they're a DoS attack
> > vector in itself, even if they're rate limited. I wonder whether we
> > could just turn the prints into a set of ethtool counters and call it a
> > day?
> 
> Sounds like a good idea to me. :-)

Thinking this through, what we really want is trace points here,
otherwise we'd lose information about which MAC address/VID/FID was it
that caused the violation.
