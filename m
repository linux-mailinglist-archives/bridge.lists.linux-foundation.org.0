Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C206064B9
	for <lists.bridge@lfdr.de>; Thu, 20 Oct 2022 17:36:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7BF6D60767;
	Thu, 20 Oct 2022 15:36:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7BF6D60767
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=Wez6UWR4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zqG9i63DaWBy; Thu, 20 Oct 2022 15:36:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id E1A596FB17;
	Thu, 20 Oct 2022 15:36:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1A596FB17
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9E6C2C0078;
	Thu, 20 Oct 2022 15:36:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 449FAC0033
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 15:36:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0671642408
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 15:36:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0671642408
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Wez6UWR4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jpkmD5gDLdHT for <bridge@lists.linux-foundation.org>;
 Thu, 20 Oct 2022 15:36:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D7381419BF
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D7381419BF
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 15:36:42 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id fy4so413601ejc.5
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 08:36:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=qPwKKOSL5o3iKP3/dq2Q/Xqf5eS+OyCN/8/d6oWiIbo=;
 b=Wez6UWR4yVy7ljjWDwKmXH6VNrw+c4JqEj+dW/C4iE13oGKDcKlajUuNqxj6oLepyi
 C0skbvziSspULzvlwn8TBGB6Tv1ygZ83Nk9yz7CmVwEt93bAqdM1W+mP5lRva/Mu2sfA
 wUJ27HWB96G1EoRapxy1zVd0dSfec6ORQh0UyIB4LVjAyzUCUXaiRRDCLvVFoEQ8Rdxg
 Ub7Q/WvBLNLViJ6sWzK+Oz8/bF7ofcwRMyWfFsvy2ESmkC+fRO+XYiQFfPUaUZI46ja+
 kaaUkAOdxxOythUrOTUZPvVTZDJCnY2dlbASFAtPDOc6Xi/cXW/qf28qa4TWVPqSRx7W
 vAKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qPwKKOSL5o3iKP3/dq2Q/Xqf5eS+OyCN/8/d6oWiIbo=;
 b=sPfmqgxm5NXz2V0Zk2IHKD0l8xHX0QnK1U/CxeaQF9jav4QjKKhw1CUasKiB3Hwr4+
 HgTE30j0S1vGExfnENv2jqf6LwZa07eHh0TMySwCYspJCCjqIZ/Z1xnu5eNy9CzNpevd
 3+Wt6mwLWTXLcnEFtLOrueEzE510GMAG1FmmnzQeMgeReKJFMd+wJZbV9bgFB3PCq3gH
 IGO+C4lDFtbTkmfuBWb7jk6hbMJlJ9Db5xW5polYJjqxon3XG/EQEKIGNh8TZ1eGWhfM
 m6js2/YqGOQ83/ZucKxSUlYvQ4ZyC02Cu/NKFrRAwTev6D6QikxIFuDIZING6SLfjd6I
 vsBw==
X-Gm-Message-State: ACrzQf1xcepBIxB3ujoMaYaI8NiIv8qZixCFcUBJ3yzaVX/AZUUGP+Pb
 bNkhaQMtPDnewiQYNB0Knww=
X-Google-Smtp-Source: AMsMyM5s+eomvicrwy06vylV7JHYWUXt7SptVI0OJ04clH7AsmxgYkS4j30ouF2cBsqK3IsRWpsFNA==
X-Received: by 2002:a17:907:724d:b0:78d:acf4:4c57 with SMTP id
 ds13-20020a170907724d00b0078dacf44c57mr11472630ejc.516.1666280200876; 
 Thu, 20 Oct 2022 08:36:40 -0700 (PDT)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 m13-20020a1709061ecd00b007305d408b3dsm10388170ejj.78.2022.10.20.08.36.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Oct 2022 08:36:39 -0700 (PDT)
Date: Thu, 20 Oct 2022 18:36:36 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Ido Schimmel <idosch@nvidia.com>
Message-ID: <20221020153636.ceqk67hmut3govsp@skbuf>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-6-netdev@kapio-technology.com>
 <20221018165619.134535-6-netdev@kapio-technology.com>
 <20221020130224.6ralzvteoxfdwseb@skbuf> <Y1FMAI9BzDRUPi5Y@shredder>
 <20221020133506.76wroc7owpwjzrkg@skbuf> <Y1FTzyPdTbAF+ODT@shredder>
 <20221020141104.7h7kpau6cnpfqvh4@skbuf> <Y1Fn+TnbI/uMH0VR@shredder>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1Fn+TnbI/uMH0VR@shredder>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org,
 "Hans J. Schultz" <netdev@kapio-technology.com>,
 Joachim Wiberg <troglobit@gmail.com>, Shuah Khan <shuah@kernel.org>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Florent Fourcot <florent.fourcot@wifirst.fr>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Amit Cohen <amcohen@nvidia.com>, Christian Marangi <ansuelsmth@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Schultz <schultz.hans@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Yuwei Wang <wangyuweihx@gmail.com>,
 Petr Machata <petrm@nvidia.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v8 net-next 05/12] net: dsa: propagate the
 locked flag down through the DSA layer
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

On Thu, Oct 20, 2022 at 06:23:37PM +0300, Ido Schimmel wrote:
> 3. Miss. FDB entry not found. Here I was thinking to always tell the
> packet to go to the software data path so that it will trigger the
> creation of the "locked" entry if MAB is enabled. If MAB is not enabled,
> it will simply be dropped by the bridge. We can't control it per port in
> hardware, which is why the BR_PORT_MAB flag is not consulted.

Ah, ok, this is the part I was missing, so you can't control an FDB miss
to generate a learn frame only on some ports. But in principle, it still
is the BR_PORT_MAB flag the one which requires these frames to be generated,
not BR_PORT_LOCKED. You can have all ports LOCKED but not MAB, and no
learn frames will be necessary to be sent to the CPU. Only EAPOL, which
is link-local multicast, will reach software for further processing and
unlock the port for a certain MAC DA.
