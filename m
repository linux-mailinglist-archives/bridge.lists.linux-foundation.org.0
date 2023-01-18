Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C288672C30
	for <lists.bridge@lfdr.de>; Thu, 19 Jan 2023 00:01:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 883A861087;
	Wed, 18 Jan 2023 23:01:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 883A861087
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=oRqBiOJY
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eA7nUhU2-nyz; Wed, 18 Jan 2023 23:01:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 26FB5610AD;
	Wed, 18 Jan 2023 23:01:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 26FB5610AD
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D39D7C0078;
	Wed, 18 Jan 2023 23:01:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1F5A3C002D
 for <bridge@lists.linux-foundation.org>; Wed, 18 Jan 2023 23:01:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ED794610AD
 for <bridge@lists.linux-foundation.org>; Wed, 18 Jan 2023 23:01:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED794610AD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ll36jTWNk_c0 for <bridge@lists.linux-foundation.org>;
 Wed, 18 Jan 2023 23:01:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16ADA61087
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 16ADA61087
 for <bridge@lists.linux-foundation.org>; Wed, 18 Jan 2023 23:01:40 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id tz11so1333154ejc.0
 for <bridge@lists.linux-foundation.org>; Wed, 18 Jan 2023 15:01:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=JG0zmDr4Gx7JTYrA4JUjYF+9TusUlPQwAzE14ZbaLBE=;
 b=oRqBiOJYIlMdDowmL/wHGABFcI0fDixl2PMB36ctD5uSKk3azFGtf6qd2Fvk85nbjC
 RZGiY6WOS6aL3GADhFTaSpq9sDvNd66O4zvJIfSzbuoiU8TfqAStjiekALks5NkGSaKe
 ovGZ8gH0HmxO9jFlluSL74dBYh1vn5KfO7NSBBuv+DCGaPm6jsuW1hq8QeP+fNTfmlqX
 3IcskUgDBjlFzRib6paxCj+S90vgVnJVBiNY0ccVMPpVBJ9PeZVJOHdXXs+2uIBtQoT/
 vlsHkNs0iO6OaL9F9gRjvD02YML4zxlAojbWSyksCeYa74+TLtrx2SxLVb3arsFe5b7r
 ZhGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JG0zmDr4Gx7JTYrA4JUjYF+9TusUlPQwAzE14ZbaLBE=;
 b=VqOwik0FsSGjhcBJOF/wb9CE7KVEKdMy1hzNCw0tGW3WUayASsJoNGNCtSqPEC4Gsl
 at4yJKNxmjJ5fzMydQUTuqDjnkVQyCK1tmf29IARnhvxxw5t8YyFbXSEE7JXgupxs0Od
 X/8KkLfgrz707mdP1JABs90Amyh77haphQh9wJXy8P34h22d1ZFQk+TEZzyINLCouy/1
 aXGyyJseOJ6FB2+SLeLnpeW8QBmsf4Ea9J9zGlfUarXGE5j9zgS1VpBVvqGSEw0QzxrD
 +DN8tbFNjswIux3Q47XXfCn6ONnAtMjE6JNNluVg5Cnd8h5mMlPpsvVFnJgz3jyquo4X
 ZwhQ==
X-Gm-Message-State: AFqh2krN4VWbDIPndE6KYZj6tOg2+xCZrzIMnjgA22BjnfH74k+LwGQ7
 pdl9Z/2dmXWemAWTd6kYPtM=
X-Google-Smtp-Source: AMrXdXuoqpi45+sG2pftBtwBbFskPfB44UC+cRcWbZWXXc+n+Hirrb16NdbKE6aaVF+8KoKPwtvNJQ==
X-Received: by 2002:a17:907:1019:b0:84c:69f8:2ec2 with SMTP id
 ox25-20020a170907101900b0084c69f82ec2mr8598505ejb.22.1674082899134; 
 Wed, 18 Jan 2023 15:01:39 -0800 (PST)
Received: from skbuf ([188.27.185.42]) by smtp.gmail.com with ESMTPSA id
 k11-20020a1709062a4b00b0073022b796a7sm15579629eje.93.2023.01.18.15.01.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Jan 2023 15:01:38 -0800 (PST)
Date: Thu, 19 Jan 2023 01:01:35 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@kapio-technology.com
Message-ID: <20230118230135.szu6a7kvt2mjb3i5@skbuf>
References: <20230117185714.3058453-1-netdev@kapio-technology.com>
 <20230117185714.3058453-3-netdev@kapio-technology.com>
 <20230117231750.r5jr4hwvpadgopmf@skbuf>
 <e4acb7edb300d41a9459890133b928b4@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e4acb7edb300d41a9459890133b928b4@kapio-technology.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Russell King <linux@armlinux.org.uk>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 =?utf-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>,
 Christian Marangi <ansuelsmth@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, netdev@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>,
 "maintainer:MICROCHIP KSZ SERIES ETHERNET SWITCH DRIVER"
 <UNGLinuxDriver@microchip.com>,
 "open list:RENESAS RZ/N1 A5PSW SWITCH DRIVER"
 <linux-renesas-soc@vger.kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [RFC PATCH net-next 2/5] net: dsa: propagate flags
 down towards drivers
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

On Wed, Jan 18, 2023 at 11:35:08PM +0100, netdev@kapio-technology.com wrote:
> I am not sure I understand you entirely.
> From my standpoint I see it as so: that until now any fdb entry coming to
> port_fdb_add() (or port_fdb_del()) are seen as static entries. And this
> changes nothing with respect to those static entries as how drivers handle
> them.

This is true; it is implicit that the port_fdb_add() and port_fdb_del()
DSA methods request switches to operate on static FDB entries (in hardware).

> When the new dynamic flag is true, all drivers will ignore it in patch #3,
> so basically nothing will change by that.

This is not true, because it assumes that DSA never called port_fdb_add()
up until now for bridge FDB entries with the BR_FDB_STATIC flag unset,
which is incorrect (it did).

So what will change is that drivers which used to react to those bridge
FDB entries will stop doing so.

> Then in patch #5 the dynamic flag is handled by the mv88e6xxx driver.
> 
> I don't know the assisted_learning_on_cpu_port feature you mention, but
> there has still not been anything but static entries going towards
> port_fdb_add() yet...

For starters, you can read the commit message of the patch that
introduced it, which is d5f19486cee7 ("net: dsa: listen for
SWITCHDEV_{FDB,DEL}_ADD_TO_DEVICE on foreign bridge neighbors").
