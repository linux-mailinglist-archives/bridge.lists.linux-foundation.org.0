Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D16E3F1D67
	for <lists.bridge@lfdr.de>; Thu, 19 Aug 2021 18:01:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0EE3E404E3;
	Thu, 19 Aug 2021 16:01:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U33H9e_v-mRp; Thu, 19 Aug 2021 16:01:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 82AD4404E2;
	Thu, 19 Aug 2021 16:01:14 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 49DFEC0022;
	Thu, 19 Aug 2021 16:01:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9287FC000E
 for <bridge@lists.linux-foundation.org>; Thu, 19 Aug 2021 16:01:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 727C5404E2
 for <bridge@lists.linux-foundation.org>; Thu, 19 Aug 2021 16:01:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yjaR0aRnUBWS for <bridge@lists.linux-foundation.org>;
 Thu, 19 Aug 2021 16:01:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F072F404CB
 for <bridge@lists.linux-foundation.org>; Thu, 19 Aug 2021 16:01:10 +0000 (UTC)
Received: by mail-lf1-x130.google.com with SMTP id y34so13995224lfa.8
 for <bridge@lists.linux-foundation.org>; Thu, 19 Aug 2021 09:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=GClqOFxFEfC+krefx64HgWgWYCi/YRwdN7djuSeQf4U=;
 b=sDyifaj3eNNHcpO2QoAnYYjlFqNV9jsxHXWLw0hSH9gHYupXSH3AYMPL4D+7gce/M8
 36FyYRX9os3bv8RjgqqSA7vtD37MAAV0op6s+l8oviK9LVXDw6R6RplgFscWEvxwO+rJ
 Ge9r5BRcZwWqWWybi8Wnn6asbhxxdG19/P8jQA9WsHBAYdkNvyfAfOGFJcNQjqpFUV/8
 b+fKeKUQ7sQhtmwE9pZ/pbEhG31qmnYtCATiIjzCYoKqWW0gkG4ns80qrO6zmq0FLWKG
 E9T7HmeTcHkQhCRAEK/iHE8isQVJ8vbdLP5cfs+khY4yvOsRLDMhT1XhmKTptu90f8KD
 DoXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=GClqOFxFEfC+krefx64HgWgWYCi/YRwdN7djuSeQf4U=;
 b=Y0fCNY4KKCfUEGsy1T2mpu91zA0unLwFp50bbtNFKSb3/fPpoNaHsMtsJAsTmn2qYE
 eRhfGkD8prGY+cO54lgPC9F9waBYG4K/zYgt2g8pWDPewFQ4j1uyVtwkrkjRFFoE0s1o
 1StVGW8sqjRZ0kfQ7MTiGP8+JsoN3o4Ex1YB73G3VPVYAcsTrJ7GfRMwQ9ePncxc1K0g
 fMpAbOAkPzfd+85YomMU9NFymBj/PpwMkyNuKn3q9UD+5J61vEELxRemoUY5eKMVFplk
 IIeaQ7j9Ce9UfbeAamMT85bvjJZJBYvnzoxZzG2j1Y00n60qLRWYrdE4oyTkmGW78fxc
 3gnQ==
X-Gm-Message-State: AOAM531UiyBa/bUriFwVO1Ec0Q2Fwc39bvpZ1swiJjys7cCLezxF3Eko
 A5+t+pIzwPiWbDs3F6VC2GI=
X-Google-Smtp-Source: ABdhPJxoAq0FUyM3u5+RYVoK7AjggZpWA/LnLxzJ8X6othdFB7ro4TZEIZsBcKWSAcWAhwmjtgKf+Q==
X-Received: by 2002:a05:6512:ac4:: with SMTP id
 n4mr10995422lfu.475.1629388867150; 
 Thu, 19 Aug 2021 09:01:07 -0700 (PDT)
Received: from wbg (h-155-4-221-58.NA.cust.bahnhof.se. [155.4.221.58])
 by smtp.gmail.com with ESMTPSA id n2sm344695lfu.109.2021.08.19.09.01.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Aug 2021 09:01:06 -0700 (PDT)
From: Joachim Wiberg <troglobit@gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>, netdev@vger.kernel.org
In-Reply-To: <20210719170637.435541-1-razor@blackwall.org>
References: <20210719170637.435541-1-razor@blackwall.org>
Date: Thu, 19 Aug 2021 18:01:05 +0200
Message-ID: <875yw1qv9a.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next 00/15] net: bridge: multicast: add
	vlan support
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

Hi Hik, everyone!

On Mon, Jul 19, 2021 at 20:06, Nikolay Aleksandrov <razor@blackwall.org> wrote:
> From: Nikolay Aleksandrov <nikolay@nvidia.com>
> This patchset adds initial per-vlan multicast support, most of the code
> deals with moving to multicast context pointers from bridge/port pointers.

Awesome work, this looks very interesting! :)  I've already built and
tested net-next for regressions on Marvell SOHO switches, looking good
so far.

Curious, are you planning querier per-vlan, including use-ifaddr support
as well?  In our in-house hack, which I posted a few years ago, we added
some "dumpster diving" to inet_select_addr(), but it got rather tricky.
So I've been leaning towards having that in userspace instead.

> Future patch-sets which build on this one (in order):
>  - iproute2 support for all the new uAPIs

I'm very eager to try out all the new IGMP per-VLAN stuff, do you have
any branch of the iproute2 support available yet for testing?  For now
I've hard-coded BROPT_MCAST_VLAN_SNOOPING_ENABLED in br_multicast_init()
as a workaround, and everything seems to work just as expected :-)

Best regards
 /Joachim
