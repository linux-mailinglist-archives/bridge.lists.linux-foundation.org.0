Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5947153B615
	for <lists.bridge@lfdr.de>; Thu,  2 Jun 2022 11:33:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EACB840ABD;
	Thu,  2 Jun 2022 09:33:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Rfz8CN_BLiQ; Thu,  2 Jun 2022 09:33:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 7B0EA40AC3;
	Thu,  2 Jun 2022 09:33:42 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 31A18C0081;
	Thu,  2 Jun 2022 09:33:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5D9E0C002D
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jun 2022 09:33:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4D10382BBA
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jun 2022 09:33:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ETNa2TzdX9Kz for <bridge@lists.linux-foundation.org>;
 Thu,  2 Jun 2022 09:33:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E316582B81
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jun 2022 09:33:38 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id h19so5537333edj.0
 for <bridge@lists.linux-foundation.org>; Thu, 02 Jun 2022 02:33:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=jLhgLLgTKtoWPjtFp8qSJCOCQYPPUCR4lznJBFvpJ40=;
 b=U2/PO1uNjGw4COGMRK/7YnRCnLhzHnfNDU3fAZ5Gx+P/GW9LrdqG3I45ITG643pzdb
 JG96C8RFIxHaJo6jdq6DH8J0mqrH0Bz1LFAyLJSsLa4UaZpclulO0L4GHi+89g9+1pnR
 HDM6h3Y5186RpYH4+PvFGvDR2Ik+oyncwi5oGmQCSvo+gPTdzOt12QXk6cniH/TCtech
 Vq3liKmSG0Xman0T2LN3WT0Wj/eUgaio4p3CEkzLOQrTkoGzCA/fMFr6AeOL1HJpIUZ2
 C0wbKaR6CbkPBGYPA6Dz6XgoxKgg/nkvNXlWjX0lgXr+zdmUXLKioQVm/Tf/NW942v7j
 a/3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=jLhgLLgTKtoWPjtFp8qSJCOCQYPPUCR4lznJBFvpJ40=;
 b=QTVLCrd0kBk5tiTCVY/bts5M8SKc27fefaCaJG1K0QeglK7tnU4I+A+w/3EsywlAUH
 7F5Yg+4ig6oj/8hVEOPs5k5+6DuV4Lqy3PtP8fMFdUorW5bXfzwGICBhRh647tHMKTxi
 nja5pVVOQMJJbUV/16ZAz0Ox8DcRXb+WLzPsiu9rhzi0WxoRQDZh5brRrcpFrFJtmUex
 8PQ9s3cUcoAcuZO5guJPh7GO12vJ/eFcMNAKvpQTa9HtaMp0jX6zTOI8gYKYYHuvASsu
 pwwy7PSN8yZQ6urNycU8EnxQQVERLue6S0wpBeiPcISfTCriKWoCjCAxnXyhJjKM0taf
 HH1A==
X-Gm-Message-State: AOAM533q0ihcSgAq8hdS9PIj95kEbgMWbz7j0Gf0v0KuUGOUyOgalD7e
 ua8QTKXDvHpshYj0/+woYIfTzw==
X-Google-Smtp-Source: ABdhPJywohivzrOJFdGS5Hg985CLuq974adXOQGB2Rff7HbgU7ROkd7WYTRbTxBJZQJ/cUCLzUml2w==
X-Received: by 2002:aa7:c34d:0:b0:42d:ce57:5df2 with SMTP id
 j13-20020aa7c34d000000b0042dce575df2mr4213121edr.315.1654162416951; 
 Thu, 02 Jun 2022 02:33:36 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 lk24-20020a170906cb1800b006fa84a0af2asm1596415ejb.16.2022.06.02.02.33.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Jun 2022 02:33:36 -0700 (PDT)
Message-ID: <d88b6090-2ac8-0664-0e38-bb2860be7f6e@blackwall.org>
Date: Thu, 2 Jun 2022 12:33:34 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Hans Schultz <schultz.hans@gmail.com>, Ido Schimmel <idosch@nvidia.com>
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
 <20220524152144.40527-2-schultz.hans+netdev@gmail.com>
 <Yo+LAj1vnjq0p36q@shredder> <86sfov2w8k.fsf@gmail.com>
 <YpCgxtJf9Qe7fTFd@shredder> <86sfoqgi5e.fsf@gmail.com>
 <YpYk4EIeH6sdRl+1@shredder> <86y1yfzap3.fsf@gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <86y1yfzap3.fsf@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@idosch.org>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH V3 net-next 1/4] net: bridge: add fdb flag to
 extent locked port feature
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

On 02/06/2022 12:17, Hans Schultz wrote:
> On tis, maj 31, 2022 at 17:23, Ido Schimmel <idosch@nvidia.com> wrote:
>> On Tue, May 31, 2022 at 11:34:21AM +0200, Hans Schultz wrote:
>>>> Just to give you another data point about how this works in other
>>>> devices, I can say that at least in Spectrum this works a bit
>>>> differently. Packets that ingress via a locked port and incur an FDB
>>>> miss are trapped to the CPU where they should be injected into the Rx
>>>> path so that the bridge will create the 'locked' FDB entry and notify it
>>>> to user space. The packets are obviously rated limited as the CPU cannot
>>>> handle billions of packets per second, unlike the ASIC. The limit is not
>>>> per bridge port (or even per bridge), but instead global to the entire
>>>> device.
>>>
>>> Btw, will the bridge not create a SWITCHDEV_FDB_ADD_TO_DEVICE event
>>> towards the switchcore in the scheme you mention and thus add an entry
>>> that opens up for the specified mac address?
>>
>> It will, but the driver needs to ignore FDB entries that are notified
>> with locked flag. I see that you extended 'struct
>> switchdev_notifier_fdb_info' with the locked flag, but it's not
>> initialized in br_switchdev_fdb_populate(). Can you add it in the next
>> version?
> 
> An issue with sending the flag to the driver is that port_fdb_add() is
> suddenly getting more and more arguments and getting messy in my
> opinion, but maybe that's just how it is...
> 
> Another issue is that
> bridge fdb add MAC dev DEV master static
> seems to add the entry with the SELF flag set, which I don't think is
> what we would want it to do or?

I don't see such thing (hacked iproute2 to print the flags before cmd):
$ bridge fdb add 00:11:22:33:44:55 dev vnet110 master static
flags 0x4

0x4 = NTF_MASTER only

> Also the replace command is not really supported properly as it is. I
> have made a fix for that which looks something like this:
> 
> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
> index 6cbb27e3b976..f43aa204f375 100644
> --- a/net/bridge/br_fdb.c
> +++ b/net/bridge/br_fdb.c
> @@ -917,6 +917,9 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
>                 if (flags & NLM_F_EXCL)
>                         return -EEXIST;
>  
> +               if (flags & NLM_F_REPLACE)
> +                       modified = true;
> +
>                 if (READ_ONCE(fdb->dst) != source) {
>                         WRITE_ONCE(fdb->dst, source);
>                         modified = true;
> 
> The argument for always sending notifications to the driver in the case
> of replace is that a replace command will refresh the entries timeout if
> the entry is the same. Any thoughts on this?

I don't think so. It always updates its "used" timer, not its "updated" timer which is the one
for expire. A replace that doesn't actually change anything on the entry shouldn't generate
a notification.
