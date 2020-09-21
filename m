Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C21522725A3
	for <lists.bridge@lfdr.de>; Mon, 21 Sep 2020 15:34:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3B79D86741;
	Mon, 21 Sep 2020 13:34:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mogn6JrA0+SW; Mon, 21 Sep 2020 13:34:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6E91B8672F;
	Mon, 21 Sep 2020 13:34:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 52392C0893;
	Mon, 21 Sep 2020 13:34:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4C0B4C0051
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 13:34:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2B38120346
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 13:34:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cp6Iv-cDUmvO for <bridge@lists.linux-foundation.org>;
 Mon, 21 Sep 2020 13:34:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 657DA2010D
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 13:34:00 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id q9so12166673wmj.2
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 06:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:reply-to:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=wPdlIs18KI5U0+lJGti5z8sy4m97lLcsvfJKYU71Zb4=;
 b=TJTi4cNhDBklHXlnU2BhmlFoP17GtWhHnpSTpszs6yBgkG0PNYcRp92G+rh3wR2wMB
 6wTDZy/tUFdfXBpBkaVMoX0+xPQifCnlheP0zbjLbul6t11emSIvi2IFXuJgJUAuhYif
 DAxKt1XmBh3zpBwP9Vf2PvxP8aeQJf1ut36EMeKkKcbRhmJdPrB9adJMPTFw0rloMKKB
 YfWBswgn5hTnD9AM3KzR01u1zNONJ7HjbNyCcZ53ZfymCCnNWz0wzMirDCFBBS6O0t/5
 q7YZA729DmydWYGDV4LZW24yTJdhFuMiH6b/9odBjqo7KtQvE/iDl2bNP+zunNrqsTpk
 8GWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:user-agent:mime-version
 :content-transfer-encoding;
 bh=wPdlIs18KI5U0+lJGti5z8sy4m97lLcsvfJKYU71Zb4=;
 b=MZNOFz+iD0heCudDqO9QCfsV/onO+uGFGPiMUodxSjQEWqdO9MrV21i2tkxkLhYoRH
 GPXRxl2mtoa81DTZQlMpXzB4Z7UawFW8+XzfXYU5zH6Fn7Xc2pX4GtrxCBjBDbQBWCjB
 hPxMgCjWHu5kABjcw3wT9tnsl4ZbP5eK8y23qMjIs7Wyzcqel0+RG9d+eps7ieoRfIjf
 isXG/mSGCXlu1papSIxin7tALRuM852OX47aPiKEAB4sjYBffx8eSPOio7swJc/HfSVz
 FR9Zb8eNraE42RSEjkf3yViCC93jYJFvk8+P9xlGMSsv7DPZ/+UpJyD5PURK2BLh+CQg
 cycg==
X-Gm-Message-State: AOAM530Ot6ys+kOySCndTpBA0kxiSPsHw4+JZrU2SV0GzX1uO7LM6oh0
 PmzkyJJtAnD4prGbmHd3HCQBRw==
X-Google-Smtp-Source: ABdhPJyOeMeACUunRhRyjQIarEzN5hQ5urTAIhwVTrIJKh+bb2lP9AAskI9HmHAzneGJWBAlNKrgOg==
X-Received: by 2002:a7b:c925:: with SMTP id h5mr29570930wml.28.1600695238916; 
 Mon, 21 Sep 2020 06:33:58 -0700 (PDT)
Received: from debil (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id d18sm21301938wrm.10.2020.09.21.06.33.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Sep 2020 06:33:58 -0700 (PDT)
Message-ID: <79bea5b909046ae1259481d172c2eb2a6c62aabb.camel@blackwall.org>
From: Nikolay Aleksandrov <razor@blackwall.org>
To: kernel test robot <lkp@intel.com>, netdev@vger.kernel.org
Date: Mon, 21 Sep 2020 16:33:56 +0300
In-Reply-To: <202009212146.1IVUIG6Z%lkp@intel.com>
References: <20200921105526.1056983-7-razor@blackwall.org>
 <202009212146.1IVUIG6Z%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: b.a.t.m.a.n@lists.open-mesh.org, kbuild-all@lists.01.org,
 Marek Lindner <mareklindner@neomailbox.ch>,
 Simon Wunderlich <sw@simonwunderlich.de>, bridge@lists.linux-foundation.org,
 roopa@nvidia.com, davem@davemloft.net, Sven Eckelmann <sven@narfation.org>
Subject: Re: [Bridge] [PATCH net-next 06/16] net: bridge: mcast: rename
 br_ip's u member to dst
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
Reply-To: razor@blackwall.org
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Mon, 2020-09-21 at 21:30 +0800, kernel test robot wrote:
> Hi Nikolay,
> 
> I love your patch! Yet something to improve:
> 
> [auto build test ERROR on net-next/master]
> 
> url:    https://github.com/0day-ci/linux/commits/Nikolay-Aleksandrov/net-bridge-mcast-IGMPv3-MLDv2-fast-path-part-2/20200921-185933
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git 3cec0369905d086a56a7515f3449982403057599
> config: riscv-allyesconfig (attached as .config)
> compiler: riscv64-linux-gcc (GCC) 9.3.0
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross ARCH=riscv 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    net/batman-adv/multicast.c: In function 'batadv_mcast_mla_br_addr_cpy':
> > > net/batman-adv/multicast.c:564:20: error: 'const struct br_ip' has no member named 'u'
>      564 |   ip_eth_mc_map(src->u.ip4, dst);
>          |                    ^~
>    net/batman-adv/multicast.c:567:23: error: 'const struct br_ip' has no member named 'u'
>      567 |   ipv6_eth_mc_map(&src->u.ip6, dst);
>          |                       ^~
> 

Hrm, I'm pretty sure I tested batman, but apparently I missed
CONFIG_BATMAN_ADV_MCAST. I'll fix it up and send v2 after some
time to give people the chance to comment on the rest of the set.

Thanks!


