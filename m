Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 634E95A387E
	for <lists.bridge@lfdr.de>; Sat, 27 Aug 2022 17:52:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E19B640578;
	Sat, 27 Aug 2022 15:52:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E19B640578
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=XzCjQYL7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id glXcM5hqaTFX; Sat, 27 Aug 2022 15:52:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 4B8E340566;
	Sat, 27 Aug 2022 15:52:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B8E340566
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DE23FC007B;
	Sat, 27 Aug 2022 15:52:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6F728C002D
 for <bridge@lists.linux-foundation.org>; Sat, 27 Aug 2022 15:52:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 365BC60D75
 for <bridge@lists.linux-foundation.org>; Sat, 27 Aug 2022 15:52:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 365BC60D75
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=XzCjQYL7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3olAznlgjpYZ for <bridge@lists.linux-foundation.org>;
 Sat, 27 Aug 2022 15:52:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3159760BEF
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3159760BEF
 for <bridge@lists.linux-foundation.org>; Sat, 27 Aug 2022 15:52:12 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id og21so8143600ejc.2
 for <bridge@lists.linux-foundation.org>; Sat, 27 Aug 2022 08:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc; bh=3YczR2Egl4ZFRyscdYYWi5wk2fHwMzSOUnVWfHdBreM=;
 b=XzCjQYL7pcKNpZS+XZ/jvaKcz044RvIp2Kqny5OT1idIVch+NIlfnHsadgKWYFDb0E
 LrNd0hKaoyAkJgnlUbgT753luKRo2WarLndU46VH401AIJex/4AHi+GjE2AERqIw4E67
 KcTGvWm0Cb47y9tZiiVeDXe5aGt3zgsJdX1yvhdGB9sF/Z6qTtvJ64moVxFbEZ3rr5yl
 pikp+Km8ABi40dgWtLH8Rsk1foqkvANAJBLYdZG/VUu8A9htUuS+ZXPGuaLcw/QxhNIa
 TflL902OKXy2G0jqaGBSpTTwIag6f4IKoc6DsHiVXpu3AccPpZkYXLscSaqqcDhfEPOK
 8xYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc;
 bh=3YczR2Egl4ZFRyscdYYWi5wk2fHwMzSOUnVWfHdBreM=;
 b=nVMmI3/7g/w+c5v3HAZUZ3Yujdf9c3RWUyJUgfV+BZZro8A8hEPbNofMU5O22Da4d5
 SEHWzR4y/4QdOxZG83EuZwu+SWlYHVQlbQTPwMO0d7Uw51U3IB1dqsD0KyRgiwPUt+p+
 VDVNiMkWt1a2pjp8fk0dWpTOL5RKt/2PpKpCUp79k5XHf03oqeeNuliD1UR3OODqbu7o
 6qyn1JoeRG1UHQH9OT0xIE0gaWX4LJFLcjwklzUvb7IloluQ4rMn+wJaBJtcef4T50b/
 5KYU/FM7KLio43Z45fBepxePUv0kWuF+5l4Oam2TTNlrcDSFf9aqWFzHUUk01wKEdvQU
 H6AQ==
X-Gm-Message-State: ACgBeo0YVJ3FsyPsk/q63xjbJ3VncKYYPsCUWZNeyswcsG/TJY36Nab+
 4RnoV2Sl8+GZL8r8IfqBJzZ+/w==
X-Google-Smtp-Source: AA6agR4UGFSDEBI+Zywo6Rd/RBwcZqB0s8dtcq4AUgPmhKGokDX6cNXLGrVlY+XIvgUPkPzXaFkbVA==
X-Received: by 2002:a17:907:724e:b0:740:e3e5:c01d with SMTP id
 ds14-20020a170907724e00b00740e3e5c01dmr4496051ejc.38.1661615530225; 
 Sat, 27 Aug 2022 08:52:10 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 z13-20020a05640235cd00b0044847e0e8ccsm257324edc.28.2022.08.27.08.52.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 27 Aug 2022 08:52:09 -0700 (PDT)
Message-ID: <80c8a02f-95b9-8e96-b05c-016b43876c15@blackwall.org>
Date: Sat, 27 Aug 2022 18:52:07 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>,
 Hans Schultz <netdev@kapio-technology.com>
References: <20220826114538.705433-1-netdev@kapio-technology.com>
 <20220826114538.705433-3-netdev@kapio-technology.com>
 <Ywo8PONgDW/lUj+X@shredder>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <Ywo8PONgDW/lUj+X@shredder>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, bridge@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Christian Marangi <ansuelsmth@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Sean Wang <sean.wang@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Yuwei Wang <wangyuweihx@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, Vladimir Oltean <olteanv@gmail.com>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v5 net-next 2/6] net: switchdev: add support
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

On 27/08/2022 18:46, Ido Schimmel wrote:
> On Fri, Aug 26, 2022 at 01:45:34PM +0200, Hans Schultz wrote:
>> diff --git a/include/net/switchdev.h b/include/net/switchdev.h
>> index 7dcdc97c0bc3..437945179373 100644
>> --- a/include/net/switchdev.h
>> +++ b/include/net/switchdev.h
>> @@ -247,7 +247,10 @@ struct switchdev_notifier_fdb_info {
>>  	const unsigned char *addr;
>>  	u16 vid;
>>  	u8 added_by_user:1,
>> +	   sticky:1,
> 
> If mv88e6xxx reports entries with 'is_local=1, locked=1, blackhole=1',
> then the 'sticky' bit can be removed for now (we will need it some day
> to support sticky entries notified from the bridge). This takes care of
> the discrepancy Nik mentioned here:
> 
> https://lore.kernel.org/netdev/d1de0337-ae16-7dca-b212-1a4e85129c31@blackwall.org/
> 

+1

>>  	   is_local:1,
>> +	   locked:1,
>> +	   blackhole:1,
>>  	   offloaded:1;
>>  };

