Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE546D1AFA
	for <lists.bridge@lfdr.de>; Fri, 31 Mar 2023 10:58:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F5B760B8F;
	Fri, 31 Mar 2023 08:58:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F5B760B8F
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=lVKy9HSA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zJzmGs0SLwEn; Fri, 31 Mar 2023 08:58:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 368E5616AE;
	Fri, 31 Mar 2023 08:58:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 368E5616AE
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C99F2C007E;
	Fri, 31 Mar 2023 08:58:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9385CC002F
 for <bridge@lists.linux-foundation.org>; Fri, 31 Mar 2023 08:58:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7A25242061
 for <bridge@lists.linux-foundation.org>; Fri, 31 Mar 2023 08:58:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A25242061
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=lVKy9HSA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jOBOU0Tsl61u for <bridge@lists.linux-foundation.org>;
 Fri, 31 Mar 2023 08:58:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 80A1642137
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 80A1642137
 for <bridge@lists.linux-foundation.org>; Fri, 31 Mar 2023 08:58:45 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id b20so86912552edd.1
 for <bridge@lists.linux-foundation.org>; Fri, 31 Mar 2023 01:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680253123;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=BYgdpbZjRcMBBZb2pcPFoHc8NfA9uoYOg/WF0eXftpw=;
 b=lVKy9HSAOGeFLg+iy7ujKGiGribkgannSjZw89QjDiPB0ZV6BZm9+DizSMM+gX3jEw
 8QIkoiOy2MNkxNZZupbYDoc64yJzb7Zakr4oYn+NZsqx23cfATRwfdyLTql0+IM3dC5T
 9zKB3+Y68Ext8eXLKbm+4W1Mq+WMbsW3LTUkmel8sWJCt88C13fN9xBBvjtKqUosu9Gw
 ucQZhXb/e9f0vPsnfBcOSdQNwVW3hXH1vRu0z/fas0JuC3+hUy/k1KwL7H5IS5+eme+q
 lWNM6p5ohWlyVrBT/8KIVW5ZPpOmzUu9j6j2ZOXYo+84gdkfqnAmrpw7d0uQRaY9JwTf
 NIdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680253123;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=BYgdpbZjRcMBBZb2pcPFoHc8NfA9uoYOg/WF0eXftpw=;
 b=EC3lc81Xbb5INbljBvv7Jy8aWQGBV8lCx9KJ4CG95jbwGkAW4Hk2kZH3qR8y9vG2e/
 gVmfZVwE0Ar8DudMPc3euB36Wpi7RpmQu6nd1tLKrNdmuSQT4hIUF38rKqOnx2aZYjMM
 UaOsvFEtWTdq5VNsFuZqULgimxN7HwalYhWL7uLKbA1mxk5E3Qt9iRPThN1+lpXW3e5r
 LF4qhrcZSWdHkaaJptM3Uka5Xn3EHWQhgYAXGFKHiDqrVXKRXFABM7urQEAal47TaxUl
 HeSE1z3WO7mOpUZca5Msf/IonCc926upn75BWwM47Jp/1vXY+rox7Mdhg+7ncQ3Ojpxi
 Fp8g==
X-Gm-Message-State: AAQBX9cYIdhD5+TMw/KizrT1ycp5S0qhduGCUYgh6i5TRNn+pFLEuR6v
 FosAg0HxjbeLPVytxZj05uA=
X-Google-Smtp-Source: AKy350aDaFJSJOJ7Uru86M1OtrOcJd6vzXZMOua1Cw1Olv1RS4PYAfP4YNznT2gZtEmV3ghHrGPU/g==
X-Received: by 2002:a17:906:71d7:b0:8a6:5720:9101 with SMTP id
 i23-20020a17090671d700b008a657209101mr27504694ejk.4.1680253123346; 
 Fri, 31 Mar 2023 01:58:43 -0700 (PDT)
Received: from skbuf ([188.27.184.189]) by smtp.gmail.com with ESMTPSA id
 x2-20020a170906296200b0092421bf4927sm764255ejd.95.2023.03.31.01.58.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Mar 2023 01:58:43 -0700 (PDT)
Date: Fri, 31 Mar 2023 11:58:40 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <netdev@kapio-technology.com>
Message-ID: <20230331085840.5wfxsuj6u7hge2uj@skbuf>
References: <20230318141010.513424-1-netdev@kapio-technology.com>
 <20230318141010.513424-7-netdev@kapio-technology.com>
 <ZBgdAo8mxwnl+pEE@shredder> <87a5zzh65p.fsf@kapio-technology.com>
 <ZCMYbRqd+qZaiHfu@shredder> <874jq22h2u.fsf@kapio-technology.com>
 <20230330192714.oqosvifrftirshej@skbuf>
 <874jq1mkm1.fsf@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <874jq1mkm1.fsf@kapio-technology.com>
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

On Fri, Mar 31, 2023 at 09:43:34AM +0200, Hans Schultz wrote:
> On Thu, Mar 30, 2023 at 22:27, Vladimir Oltean <olteanv@gmail.com> wrote:
> > This is how I always run them, and it worked fine with both Debian
> > (where it's easy to add missing packages to the rootfs) or with a more
> > embedded-oriented Buildroot.
> 
> I am not entirely clear of your idea. You need somehow to boot into a
> system with the patched net-next kernel

You have to do that anyway for any kind of kernel work, no?

> or you have a virtual machine boot into a virtual OS. I guess it is
> the last option you refer to using Debian?

You could do that too, but you don't have to. Debian, like many other
Linux distributions, supports a wide variety of CPU architectures; it
can be run on embedded systems just as well as on desktop PCs or VMs.
I didn't say you have to use Debian, though, I just said I ran the
selftests on a Debian-based rootfs and that it was easy to prepare the
environment there. The Debian rootfs and the selftests were deployed to
the target board with the DSA switch on it, in case that wasn't clear.
