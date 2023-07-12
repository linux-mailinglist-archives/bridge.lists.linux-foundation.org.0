Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1B2750B6B
	for <lists.bridge@lfdr.de>; Wed, 12 Jul 2023 16:52:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0635741B9E;
	Wed, 12 Jul 2023 14:52:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0635741B9E
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=0z7yFLyI
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SfYqp0H8RREu; Wed, 12 Jul 2023 14:52:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 4B4F541B75;
	Wed, 12 Jul 2023 14:52:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B4F541B75
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C4D12C0DD4;
	Wed, 12 Jul 2023 14:52:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 82FFEC0032
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 14:52:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4FE7582B53
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 14:52:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4FE7582B53
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=0z7yFLyI
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UCLmc14KaW3T for <bridge@lists.linux-foundation.org>;
 Wed, 12 Jul 2023 14:52:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A9C5782909
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com
 [IPv6:2a00:1450:4864:20::235])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A9C5782909
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 14:52:12 +0000 (UTC)
Received: by mail-lj1-x235.google.com with SMTP id
 38308e7fff4ca-2b703a0453fso113135971fa.3
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 07:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1689173530; x=1691765530;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=HEsEZqyAF5CV0dX25sFVpwrns2MDngxAFs4im1HqwqU=;
 b=0z7yFLyItiNDp711koXJJ4aTbp0rdLle37fAYe0YhbMjdP27PHf9jHKIU52BRdt4z2
 hjAZKjoiQEHb5q5kz+Ek1+hdx3sUZdmaBzLtd89DL13lBjOw9wQQV+yoKrvbfNXFmxfh
 Jk4kH6P2eN1yneoCJAHHFwoND1FkGzXiiEU1o1QnW6/LB/zzonyGfvK5OU+sVptxz0EW
 OCmTYqsqNvVF+VSL4YU8wooryaVmfUbHdxEdoexMojQ50mDYJVRIJ4W6CSi86DBrxHQE
 asx8W9vjMFRahGC7446wCZAdcdOkCOXORgLMHMiPJlyP03Sj8I+XdE+hALWVkO7AYGtc
 6WKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689173530; x=1691765530;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=HEsEZqyAF5CV0dX25sFVpwrns2MDngxAFs4im1HqwqU=;
 b=EkdzhiMV2F21dU2xHQYZklP5Sn2oUNwTx3COGScNR5CMXgjnuYlGxxdc8whM8w+j0Z
 LIUQjlgCOJA/PcrzZ98qiGDGHH3Z5a8/s22DQqN+raIjCH7lAwRJqw7n9OKShl4rEwJg
 sQ4R4JWPu4/cTQ92RwUc6fq/LQXrjdk3YiTEPuFRbzkugB+zSc/2mFtlWkODKKBU4DEx
 mO5I2kB0OZ93rPxbo22XUPSzS1Dig8Bot6iGJOKvRg2XMxP1z8wtX4ew6zK0iTAfxPE+
 ZH9tevJ1UKg1KYw5YJYnPKwygdPK+0FYYvCvT5FNqUQTMOdsT6V7Fq4VuCVAe4LzM7kk
 NOLA==
X-Gm-Message-State: ABy/qLYB1r3lfrokVUpKsiHej4mbRGY/StUdzWTJbEASfqprJKQ9Rme5
 pEk9DGgTmbDb8P++fP8S0PTqdQ==
X-Google-Smtp-Source: APBJJlFiZlYYBC+lbUER5z8Ofdv4m8A4Fb++MFYv8XoP6QA5GOJPaRibDc6UsucUQ/NabgMZPa24pw==
X-Received: by 2002:a05:651c:102f:b0:2b5:85a9:7e9b with SMTP id
 w15-20020a05651c102f00b002b585a97e9bmr19105711ljm.33.1689173530431; 
 Wed, 12 Jul 2023 07:52:10 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 p18-20020a170906b21200b00992e265a22dsm2637433ejz.136.2023.07.12.07.52.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 12 Jul 2023 07:52:10 -0700 (PDT)
Message-ID: <caf5bc87-0b5f-cd44-3c1c-5842549c8c6e@blackwall.org>
Date: Wed, 12 Jul 2023 17:52:09 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Ido Schimmel <idosch@idosch.org>, Kuniyuki Iwashima <kuniyu@amazon.com>
References: <20230711235415.92166-1-kuniyu@amazon.com>
 <ZK69NDM60+N0TTFh@shredder>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <ZK69NDM60+N0TTFh@shredder>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Kuniyuki Iwashima <kuni1840@gmail.com>, Harry Coin <hcoin@quietfountain.com>,
 Eric Dumazet <edumazet@google.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH v1 net] bridge: Return an error when enabling
 STP in netns.
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

On 12/07/2023 17:48, Ido Schimmel wrote:
> On Tue, Jul 11, 2023 at 04:54:15PM -0700, Kuniyuki Iwashima wrote:
>> When we create an L2 loop on a bridge in netns, we will see packets storm
>> even if STP is enabled.
>>
>>   # unshare -n
>>   # ip link add br0 type bridge
>>   # ip link add veth0 type veth peer name veth1
>>   # ip link set veth0 master br0 up
>>   # ip link set veth1 master br0 up
>>   # ip link set br0 type bridge stp_state 1
>>   # ip link set br0 up
>>   # sleep 30
>>   # ip -s link show br0
>>   2: br0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP mode DEFAULT group default qlen 1000
>>       link/ether b6:61:98:1c:1c:b5 brd ff:ff:ff:ff:ff:ff
>>       RX: bytes  packets  errors  dropped missed  mcast
>>       956553768  12861249 0       0       0       12861249  <-. Keep
>>       TX: bytes  packets  errors  dropped carrier collsns     |  increasing
>>       1027834    11951    0       0       0       0         <-'   rapidly
>>
>> This is because llc_rcv() drops all packets in non-root netns and BPDU
>> is dropped.
>>
>> Let's show an error when enabling STP in netns.
>>
>>   # unshare -n
>>   # ip link add br0 type bridge
>>   # ip link set br0 type bridge stp_state 1
>>   Error: bridge: STP can't be enabled in non-root netns.
>>
>> Note this commit will be reverted later when we namespacify the whole LLC
>> infra.
>>
>> Fixes: e730c15519d0 ("[NET]: Make packet reception network namespace safe")
>> Suggested-by: Harry Coin <hcoin@quietfountain.com>
> 
> I'm not sure that's accurate. I read his response in the link below and
> he says "I'd rather be warned than blocked" and "But better warned and
> awaiting a fix than blocked", which I agree with. The patch has the
> potential to cause a lot of regressions, but without actually fixing the
> problem.
> 
> How about simply removing the error [1]? Since iproute2 commit
> 844c37b42373 ("libnetlink: Handle extack messages for non-error case"),
> it can print extack warnings and not only errors. With the diff below:
> 
>  # unshare -n 
>  # ip link add name br0 type bridge
>  # ip link set dev br0 type bridge stp_state 1
>  Warning: bridge: STP can't be enabled in non-root netns.
>  # echo $?
>  0
> 
> [1]
> diff --git a/net/bridge/br_stp_if.c b/net/bridge/br_stp_if.c
> index a807996ac56b..b5143de37938 100644
> --- a/net/bridge/br_stp_if.c
> +++ b/net/bridge/br_stp_if.c
> @@ -201,10 +201,8 @@ int br_stp_set_enabled(struct net_bridge *br, unsigned long val,
>  {
>         ASSERT_RTNL();
>  
> -       if (!net_eq(dev_net(br->dev), &init_net)) {
> +       if (!net_eq(dev_net(br->dev), &init_net))
>                 NL_SET_ERR_MSG_MOD(extack, "STP can't be enabled in non-root netns");
> -               return -EINVAL;
> -       }
>  
>         if (br_mrp_enabled(br)) {
>                 NL_SET_ERR_MSG_MOD(extack,
> 

I'd prefer this approach to changing user-visible behaviour and potential regressions.
Just change the warning message.

Thanks,
 Nik

