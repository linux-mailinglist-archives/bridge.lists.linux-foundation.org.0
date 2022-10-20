Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C11E606BA6
	for <lists.bridge@lfdr.de>; Fri, 21 Oct 2022 00:53:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E121B843D2;
	Thu, 20 Oct 2022 22:52:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E121B843D2
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=L7KL7Cmq
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a-zBCZu5-g6k; Thu, 20 Oct 2022 22:52:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 829D1843D1;
	Thu, 20 Oct 2022 22:52:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 829D1843D1
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1BE46C0078;
	Thu, 20 Oct 2022 22:52:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CC2FFC002D
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 22:52:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 91BB9843D1
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 22:52:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91BB9843D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9QuFzf7kRGAM for <bridge@lists.linux-foundation.org>;
 Thu, 20 Oct 2022 22:52:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6539843DB
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C6539843DB
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 22:52:53 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id d26so2986927eje.10
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 15:52:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=L2G/9Nt1UPxsYT32uFvEw5BhWk6FA6rHpv/vvZ1BQSE=;
 b=L7KL7Cmq5BeuUdYGMW3cAgtIcuVZg5ASkJ/IZNJWWUiJ+/Qt6gVlScz1u/W2UurieC
 StTRCMiF1gayWtat9yR1jxy03jHzqPRpY+d/GgJ1K8lmNPRqj47kEmjBivrdxwcQlJRP
 gqfaCFKJCe0cSgQC/Xx9MVQoKg98NUMWFRqSK3/+nRYCXn1Q7yrGT4PHRNV43mZeBqb1
 cVtzyuggTcE1Pu9cpikwolaS6fyiZ1HlsdnyB5HAFFtEAPY8oUGlBvmr4xSRLlq7VRIk
 7rfYUfkbEQcY9aYc3JzsWSeJh1CqZ0CXrIEVX1+mmeRiMEa2Rwrz9msL2vRPepDcIKvz
 1T1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=L2G/9Nt1UPxsYT32uFvEw5BhWk6FA6rHpv/vvZ1BQSE=;
 b=BYGwu1fGWsfJhwZANZNoOvtBv7oXgSXWV1JkTljE/hVXtbrsBF8sEBHmrFil2tLv4U
 w8biZ68ndFu6U1IBQz87+ca6on2eQ1PHIRweI+0bMc0t6DNBvCbMUkrLK+hcIWixKyxK
 MI4sDPVOHbkeb0a1lgevcIOQQ2Yv0b4eX4pCqKhZvtEiseQuwjBt+7Tf3ozHgHjuTwZ8
 /hUa1kwpkpLf3M/bwN8Nx2hq0GBPU7aSc6T54bzCQm/KkY3XtP02JzY3M/ms+gsOKEND
 7k/8XhEss4E9CqPTKK01glBBg59dfRZU+FzTDQGFsh+epjoleU9sCszH48N6+W6mWAH0
 0fMQ==
X-Gm-Message-State: ACrzQf0jhtZl1CLEdxXyr2iyqNO0LLfU6FfXjIxHAIvXBC/C4227UkDF
 JW/9pYJjzdhVn2qYQ/yWa0E=
X-Google-Smtp-Source: AMsMyM5+9yiqphjFjNrH8KW/esDJUp/n6M5wxHkOVHLIro1ZznSRDyfo73CoezEZIlBBqvJ8bUzutw==
X-Received: by 2002:a17:907:9602:b0:780:8c9f:f99a with SMTP id
 gb2-20020a170907960200b007808c9ff99amr12947250ejc.465.1666306371826; 
 Thu, 20 Oct 2022 15:52:51 -0700 (PDT)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 v25-20020a17090651d900b0078da24ea9c7sm10939361ejk.17.2022.10.20.15.52.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Oct 2022 15:52:51 -0700 (PDT)
Date: Fri, 21 Oct 2022 01:52:47 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@kapio-technology.com
Message-ID: <20221020225247.acy4cejhcmtmf6ua@skbuf>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-6-netdev@kapio-technology.com>
 <20221018165619.134535-6-netdev@kapio-technology.com>
 <20221020130224.6ralzvteoxfdwseb@skbuf>
 <715c068915c9f07ad62d9837e70df7a1@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <715c068915c9f07ad62d9837e70df7a1@kapio-technology.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Joachim Wiberg <troglobit@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Ido Schimmel <idosch@nvidia.com>,
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
 linux-kernel@vger.kernel.org, Florent Fourcot <florent.fourcot@wifirst.fr>,
 UNGLinuxDriver@microchip.com, davem@davemloft.net
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

On Thu, Oct 20, 2022 at 09:43:40PM +0200, netdev@kapio-technology.com wrote:
> I guess you mean, why it differs from the inherit flag mask list?
> 
> If so it is explained in the update to v7 in 00/12.

The following is written there:

|        v7:     Remove locked port and mab flags from DSA flags
|                inherit list as it messes with the learning
|                setting and those flags are not naturally meant
|                for enheriting, but should be set explicitly.

Can you go one level deeper with the explanation? What messes with the
learning setting? Why are those brport flags not naturally meant for
inheriting?

It's pretty hard to take your patch set seriously if you don't provide
proper explanations.
