Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 02DCD25C12B
	for <lists.bridge@lfdr.de>; Thu,  3 Sep 2020 14:41:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 690F186CA5;
	Thu,  3 Sep 2020 12:40:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bLpSYD-kMUiF; Thu,  3 Sep 2020 12:40:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0299386CA7;
	Thu,  3 Sep 2020 12:40:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D4064C0051;
	Thu,  3 Sep 2020 12:40:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D178AC0051
 for <bridge@lists.linux-foundation.org>; Thu,  3 Sep 2020 12:40:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BA27786CAE
 for <bridge@lists.linux-foundation.org>; Thu,  3 Sep 2020 12:40:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NQEdvaQ2qswL for <bridge@lists.linux-foundation.org>;
 Thu,  3 Sep 2020 12:40:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8E47086CA5
 for <bridge@lists.linux-foundation.org>; Thu,  3 Sep 2020 12:40:53 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id j2so3051009wrx.7
 for <bridge@lists.linux-foundation.org>; Thu, 03 Sep 2020 05:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=hBMfuDIAoT4SFwZ/3u104/lWEd/i6lIYF1PY5oM5pI0=;
 b=TcBFkEytJScweYUxW7dsjokpcc4dmGJTwVS80o7KJv6ybvjVYmpNSbnBfo1rYlkv1p
 8A4p9XEfzZraCb80CH2BOACdX5cweDb+xG4uwrw1AnVl5WgAJtuFeWmg7b5mfqvEq/EE
 yRmz5CMFI+4+8U8vysnwQ8MxV0vI0it6EQmqU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hBMfuDIAoT4SFwZ/3u104/lWEd/i6lIYF1PY5oM5pI0=;
 b=YwV6mbNNVNYkX5B/ngeqdw0J2zSyUZjfnP3AfJpr9kfXD2CsKnHv/IN8b/BKXZFDNg
 9crZC+hsy+ThMOgAx5srhflaPLIkXtbsbTE7nde0OlaHvdeLE99I94YD9GqvsyoX9ghu
 GJo3RLr7sxUAg2MoMEF7V+/q44fF5CDrnF8XxdQflRnp2tCU/WZuwL/MEMTKMRiYWEXe
 hfz6g2rl03gfIbKjwsAOk29gMV+F2ozO1zu5NHvqc0Mt9et8MgaNIEUSI3/IOQap6fsO
 S8p7nc/ymDOXyMqLn8PNMEL5mWZU5tpu+NTAZT4y7Ckt1NUw5j+zSrPVJ8gczYUUKbgw
 MAQg==
X-Gm-Message-State: AOAM533ebWbeAkGICLfJS9hXmbahoa2YT/dt8yjRso4ATrSdFf+2GzoE
 ay0yM9QHD82v+ZfCMTpp8+G+Sg==
X-Google-Smtp-Source: ABdhPJyV878M9c5gTjfb9X56AXRamum95oJL6lvKmmNdxfz85kj+eiMmWlXgJ9A8vOQhbT0sWY+8Mw==
X-Received: by 2002:adf:b19c:: with SMTP id q28mr2444413wra.392.1599136852055; 
 Thu, 03 Sep 2020 05:40:52 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id o124sm4080466wmb.2.2020.09.03.05.40.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Sep 2020 05:40:51 -0700 (PDT)
To: Dan Carpenter <dan.carpenter@oracle.com>, kbuild@lists.01.org,
 netdev@vger.kernel.org
References: <20200903121832.GD8299@kadam>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <e44e5447-6420-68ba-3f45-bee090382660@cumulusnetworks.com>
Date: Thu, 3 Sep 2020 15:40:49 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200903121832.GD8299@kadam>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: kbuild-all@lists.01.org, lkp@intel.com, bridge@lists.linux-foundation.org,
 roopa@nvidia.com, davem@davemloft.net, Dan Carpenter <error27@gmail.com>
Subject: Re: [Bridge] [PATCH net-next v2 04/15] net: bridge: mcast: add
 support for group-and-source specific queries
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

On 03/09/2020 15:18, Dan Carpenter wrote:
> Hi Nikolay,
> 
> url:    https://github.com/0day-ci/linux/commits/Nikolay-Aleksandrov/net-bridge-mcast-initial-IGMPv3-support-part-1/20200902-193339
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git dc1a9bf2c8169d9f607502162af1858a73a18cb8
> config: i386-randconfig-m021-20200902 (attached as .config)
> compiler: gcc-9 (Debian 9.3.0-15) 9.3.0
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> 
> New smatch warnings:
> net/bridge/br_multicast.c:359 br_ip4_multicast_alloc_query() error: use kfree_skb() here instead of kfree(skb)
> 
> Old smatch warnings:
> net/bridge/br_multicast.c:711 br_multicast_add_group() error: potential null dereference 'mp'.  (br_multicast_new_group returns null)
> 

Thanks Dan!
I also caught that while working on v3 and the IPv6 part. :) 
Since it's in code that shouldn't be ever reached it wasn't tested.
Anyway in v3 it will be fixed.

