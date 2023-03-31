Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 649766D1C98
	for <lists.bridge@lfdr.de>; Fri, 31 Mar 2023 11:37:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E2F440093;
	Fri, 31 Mar 2023 09:37:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E2F440093
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=CULtuAu+
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zXc1hxAzPQIh; Fri, 31 Mar 2023 09:37:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id A21EE400A6;
	Fri, 31 Mar 2023 09:37:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A21EE400A6
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 42B6CC008C;
	Fri, 31 Mar 2023 09:37:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 08DB3C002F
 for <bridge@lists.linux-foundation.org>; Fri, 31 Mar 2023 09:37:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E438740093
 for <bridge@lists.linux-foundation.org>; Fri, 31 Mar 2023 09:37:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E438740093
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OPIr2ULl5iwj for <bridge@lists.linux-foundation.org>;
 Fri, 31 Mar 2023 09:37:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A2A4400A6
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3A2A4400A6
 for <bridge@lists.linux-foundation.org>; Fri, 31 Mar 2023 09:37:38 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id cn12so87283266edb.4
 for <bridge@lists.linux-foundation.org>; Fri, 31 Mar 2023 02:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680255456;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=2I7yU40CH1KTIPKs6kPsl2SefiwR2YueS62dP0NZHu0=;
 b=CULtuAu+grWGSjin+B2q5K4vYLYkcVUEPT39QZYv//yLch8kj4X27vymmyL6jBA+6i
 ACX6DSEhIpF/wfIzCNgePEz4Vh8s7ay58GscTeT85T1s0GBwPwzwrUMGQt5B18kY6yGt
 6pnNAfBEPK90KIPsAWjhQtATM+vY7j2qnuCzy28AkPwgdA0wZiMdDFqUAjg5x0HOdywP
 RCbkrkVCOApLgALXeDU7BFWqM8Jw0onrurgD9v1FxXo9Pjel8PvrWFWJbC8sy/v87HQY
 6igVRZ6GHH31atrxF93yu5HzZFuCVxemH5qtqiMhRdt4LWTplUbroNn5PAMAJQxsMd+q
 tVxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680255456;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2I7yU40CH1KTIPKs6kPsl2SefiwR2YueS62dP0NZHu0=;
 b=2IfMOS4/I5KKZ+VGRqAYYIzKSeWU4mmlxQnMwzx/pirq6KbX5p5K+bvWwIHCfqUOfa
 2MwoS03vEhlD3iXcwjr3c7BiVXB32m2I7tg7GHrwymnPrdj5PBoMhMw1Eew8RIcbN1yA
 mMJ4gVyrrvNJGAU2JSrGai2N9RLMgoK8XiB5Qoo9lcXYglcMEyGaJTXT7yZHRempEqM6
 VbNWHOnEdwEGnkR9uamWqqplH5kYJDon8PL0ndkMmJlpGj5PeLI8HzGR6HRir1ZHQ528
 lPo2G0FyHIsl5FMeQivyxi44AU1ASy/FE/Dm8H+bg+zjr00Nk3yZt1gUL42XoxXPHVdr
 xAxg==
X-Gm-Message-State: AAQBX9eNZEND7BsB+BdbM9sZx7JmHbfCNEe1/rRe3lEpym44ps0YvnJG
 PF7cwq1ErrERH5TKrjPOPhE=
X-Google-Smtp-Source: AKy350bof3uST/s/9pKcj0ktKgjrdn5KxhempDvqC74UkFxrzYGgGnwAeOmC2i4gm38HAAfyNcINBg==
X-Received: by 2002:a17:906:f190:b0:931:a321:7640 with SMTP id
 gs16-20020a170906f19000b00931a3217640mr29388052ejb.74.1680255455987; 
 Fri, 31 Mar 2023 02:37:35 -0700 (PDT)
Received: from skbuf ([188.27.184.189]) by smtp.gmail.com with ESMTPSA id
 gx20-20020a1709068a5400b00931faf03db0sm790309ejc.27.2023.03.31.02.37.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Mar 2023 02:37:35 -0700 (PDT)
Date: Fri, 31 Mar 2023 12:37:32 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <netdev@kapio-technology.com>
Message-ID: <20230331093732.s6loozkdhehewlm4@skbuf>
References: <20230318141010.513424-1-netdev@kapio-technology.com>
 <20230318141010.513424-7-netdev@kapio-technology.com>
 <ZBgdAo8mxwnl+pEE@shredder> <87a5zzh65p.fsf@kapio-technology.com>
 <ZCMYbRqd+qZaiHfu@shredder> <874jq22h2u.fsf@kapio-technology.com>
 <20230330192714.oqosvifrftirshej@skbuf>
 <871ql5mjjp.fsf@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <871ql5mjjp.fsf@kapio-technology.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, open list <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Ido Schimmel <idosch@nvidia.com>, kuba@kernel.org,
 Paolo Abeni <pabeni@redhat.com>,
 =?utf-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>,
 Christian Marangi <ansuelsmth@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 netdev@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 "maintainer:MICROCHIP KSZ SERIES ETHERNET SWITCH DRIVER"
 <UNGLinuxDriver@microchip.com>,
 "open list:RENESAS RZ/N1 A5PSW SWITCH DRIVER"
 <linux-renesas-soc@vger.kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 6/6] selftests: forwarding: add
 dynamic FDB test
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

On Fri, Mar 31, 2023 at 10:06:34AM +0200, Hans Schultz wrote:
> The memory problems are of course on the embedded target. In that case I
> think it would be a very good idea to do something to design the system
> better, so that it frees memory between the subtests.

People like Martin Blumenstingl have managed to deploy and run the
networking kselftests on OpenWRT, which typically runs on very
resource-constrained embedded devices.
https://lore.kernel.org/netdev/CAFBinCDX5XRyMyOd-+c_Zkn6dawtBpQ9DaPkA4FDC5agL-t8CA@mail.gmail.com/
https://lore.kernel.org/netdev/20220707135532.1783925-1-martin.blumenstingl@googlemail.com/

Considering that, you'll have to come with a much more concrete description
of why the system should be "designed better" and "free memory between
subtests" (what memory?!) before you could run it on your target system.

Either that, or at least take into serious consideration the fact that you
may be hung up on doing something which isn't necessary for the end goal.

I simply have no clue what you're talking about. It's as if we're talking
about completely different things.

> If all tests are always run on the bridge only, I think they don't make
> much sense as these patchsets are directed towards switchcores.

Is this supposed to mean something, or is it just a random thought you
had, that you believed it would be good to share with us?

The tools/testing/selftests/net/forwarding/lib.sh central framework has
the NETIF_TYPE and NETIF_CREATE variables, which indicate that by default,
veth interfaces are created. When running a bridge selftest with veth as
bridge ports, indeed software bridging should take place, and those
selftests should work fine. In Linux, the software behavior represents a
model for the offload behavior, since offloads are 100% transparent to
the user most of the time.

Below in lib.sh, there is a line which sources "$relative_path/forwarding.config",
a file which can contain customizations of the default variables used by
the framework. Even though it isn't strictly necessary to put the
customized bash variables in a forwarding.config file, it is more
convenient to do this than to specify them as environment variables.

If you "cd tools/testing/selftests/drivers/net/dsa/", you will find
precisely such a forwarding.config file there, which contains the line
"NETIF_CREATE=no", which means that when you run the symlinked sub-group
of forwarding tests relevant to DSA from this folder, the expectation is
that the bridge ports are not veth interfaces created for the test, but
rather, physical ports.

So, by running the command I posted in the earlier email, you actually
run it on the physical DSA user port interfaces, and it should pass
there too. This is based on the equivalency principle between the
software and the hardware data paths that I was talking about.

If you're actively and repeatedly making an effort to work with your eyes
closed, and then build strawmen around the fact that you don't see, then
you're not going to get very friendly reactions from people, me included,
who explain things to you that pertain to your due diligence. This is
because these people know the things that they're explaining to you out
of their own due diligence, and, as a result, are not easily fooled by
your childish excuses.
