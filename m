Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B385A4676
	for <lists.bridge@lfdr.de>; Mon, 29 Aug 2022 11:51:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C290982974;
	Mon, 29 Aug 2022 09:51:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C290982974
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=VA8mRlDI
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TYKH3Wmn8_og; Mon, 29 Aug 2022 09:51:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 51DF482AA2;
	Mon, 29 Aug 2022 09:51:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51DF482AA2
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D6889C0078;
	Mon, 29 Aug 2022 09:51:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E716CC002D
 for <bridge@lists.linux-foundation.org>; Mon, 29 Aug 2022 09:51:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B347C82AA2
 for <bridge@lists.linux-foundation.org>; Mon, 29 Aug 2022 09:51:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B347C82AA2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FY1rz8YIuboq for <bridge@lists.linux-foundation.org>;
 Mon, 29 Aug 2022 09:51:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE81482974
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CE81482974
 for <bridge@lists.linux-foundation.org>; Mon, 29 Aug 2022 09:51:18 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id u9so14601642ejy.5
 for <bridge@lists.linux-foundation.org>; Mon, 29 Aug 2022 02:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc; bh=SlYMUlG2qSvFZB0N2mq5+Vuwq77kZgSrLYVLPhtOEnc=;
 b=VA8mRlDIJuRpUjAr2wap2tw76G9iqQ95P1eKHRbi0MXQ+y5IRx86u42xLbqDa3N5Uw
 WBpv8t9zipWs3CctFwvBsrOIu5XtbCOP1buoXyRAK4MLU31Yw5ngEBFKEMkK8zVonfRa
 j0ONoFy8E5axclexgQI8Deix+KM6vUXYS29+vk/m2cgOGWRgF4irThnGgYZYmbUaOgFL
 UAiaDDzB1hu/DAZMMj9RMnoiMeWabPFTFH2n9WQhu3VNwHXDNrCWsZF6emYbnh58OVDq
 r+pUZaGHVx50qLZUXUjESZfGWi8gRrSNSOgOjZjybuBNJVt27lkMLyDAdhTM/SlwI1T9
 rD/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc;
 bh=SlYMUlG2qSvFZB0N2mq5+Vuwq77kZgSrLYVLPhtOEnc=;
 b=tZGJoB/d6vNiIsPCDDvAWIdqUGX5ifDT2Qw6XZuzXNvQkAtoM6RsHLFmOZCEs4R6eS
 0vXgWLL6lByEQiTYz9uqIjtSO6TGBm1frbOfpeIanomSgTEzqrqr1cUeuRyeLX4jT0P/
 UWZTGbRtkO54KdK60RG+NxrmjdLtAXRIz9TJs6BL5KCo5PRHj2sdLJJiChN63HLd7TFC
 TOdOgKUJespV6iFqWIpnf2FpRtkcmT9QfRRkX4W2T9idZaESXsLE5QUl/DEgJ1p5E7hN
 gqston63YC6A0a87gLaW2iusUXnN7cBAKcwPek4UaIgkcEd7wBcFfZXtZiKtlfUSfnBB
 uH2A==
X-Gm-Message-State: ACgBeo1qcTxU5c34dWMuMvzd9qxak236ZXW9qABhJjscrWoVXoRX2l8T
 Cjop2sKxXknHpaqE0JZkjptzlw==
X-Google-Smtp-Source: AA6agR7M8nHmvMXeLrqK9slD36AnzRPtNtaEGwJrWTLaeYi3Ldj3MRdNNKrrHzv2HbakO0uElrxasg==
X-Received: by 2002:a17:907:2d23:b0:730:acf0:4907 with SMTP id
 gs35-20020a1709072d2300b00730acf04907mr13239673ejc.700.1661766676786; 
 Mon, 29 Aug 2022 02:51:16 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 z2-20020a170906240200b0073c23616cb1sm4374177eja.12.2022.08.29.02.51.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 Aug 2022 02:51:16 -0700 (PDT)
Message-ID: <4749d6b6-c20c-fd20-f904-accee3f1947a@blackwall.org>
Date: Mon, 29 Aug 2022 12:51:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@kapio-technology.com
References: <20220826114538.705433-1-netdev@kapio-technology.com>
 <20220826114538.705433-2-netdev@kapio-technology.com>
 <Ywo16vHMqxxszWzX@shredder>
 <dd9a4156fe421f6be3a49f5b928ef77e@kapio-technology.com>
 <YwxwPJOx/n5SHZM5@shredder>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <YwxwPJOx/n5SHZM5@shredder>
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
Subject: Re: [Bridge] [PATCH v5 net-next 1/6] net: bridge: add locked entry
 fdb flag to extend locked port feature
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

On 29/08/2022 10:52, Ido Schimmel wrote:
> On Sun, Aug 28, 2022 at 12:23:30PM +0200, netdev@kapio-technology.com wrote:
>> On 2022-08-27 17:19, Ido Schimmel wrote:
>>> On Fri, Aug 26, 2022 at 01:45:33PM +0200, Hans Schultz wrote:
>>>>
>>>>  	nbp_switchdev_frame_mark(p, skb);
>>>> @@ -943,6 +946,10 @@ static int br_setport(struct net_bridge_port
>>>> *p, struct nlattr *tb[],
>>>>  	br_set_port_flag(p, tb, IFLA_BRPORT_NEIGH_SUPPRESS,
>>>> BR_NEIGH_SUPPRESS);
>>>>  	br_set_port_flag(p, tb, IFLA_BRPORT_ISOLATED, BR_ISOLATED);
>>>>  	br_set_port_flag(p, tb, IFLA_BRPORT_LOCKED, BR_PORT_LOCKED);
>>>> +	br_set_port_flag(p, tb, IFLA_BRPORT_MAB, BR_PORT_MAB);
>>>> +
>>>> +	if (!(p->flags & BR_PORT_LOCKED))
>>>> +		p->flags &= ~BR_PORT_MAB;
>>
>> The reason for this is that I wanted it to be so that if you have MAB
>> enabled (and locked of course) and unlock the port, it will automatically
>> clear both flags instead of having to first disable MAB and then unlock the
>> port.
> 
> User space can just do:
> 
> # bridge link set dev swp1 locked off mab off
> 
> I prefer not to push such logic into the kernel and instead fail
> explicitly. I won't argue if more people are in favor.

+1

I prefer to fail explicitly too, actually I also had a comment about this but
somehow have managed to delete it before sending my review. :)
