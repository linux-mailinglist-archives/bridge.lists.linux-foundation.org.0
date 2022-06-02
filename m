Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A0053B6C1
	for <lists.bridge@lfdr.de>; Thu,  2 Jun 2022 12:17:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B4AC400D2;
	Thu,  2 Jun 2022 10:17:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GqV68GOJ7xEn; Thu,  2 Jun 2022 10:17:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 9F19A40168;
	Thu,  2 Jun 2022 10:17:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5C9F4C0081;
	Thu,  2 Jun 2022 10:17:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 63E80C002D
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jun 2022 10:17:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4CD6F40884
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jun 2022 10:17:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 66Pv7DxTGYRV for <bridge@lists.linux-foundation.org>;
 Thu,  2 Jun 2022 10:17:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7A97C4087A
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jun 2022 10:17:07 +0000 (UTC)
Received: by mail-lf1-x133.google.com with SMTP id y32so7051537lfa.6
 for <bridge@lists.linux-foundation.org>; Thu, 02 Jun 2022 03:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=OfL1oE8E5VUJipAihqvicf8O595es3dpUsW+47EuKCY=;
 b=fPH/OXEF4aWfuqMLZjJjspqSrKGuHIXivBc2TH1XFAnfKX7dIES4CqwmbJkJMkgZaS
 aLbLeB03ocWh/mJ3KX5nwifk0mqRjdYkZMBcDWNU+J9riwzosD9MqiU8d5k9tTac1P3y
 40iICoXleS9wOCo85Jxxwb6xc51YKyEO4qYx1qIDTuLPrxTPr3yRmgeDY+590QOUSf+d
 ZeLL6yG4Y02fLrfMInR6zJTwvacH5r2oz+VnG5WR/uDN0V7EA9miP+1pwQ5kIhycmtaF
 C0SdrN0oWry6F4di+poq7ojQ9yHRqyZiRVQkvDkdK4obYqs128afI9ADaLUdaT3YjT1d
 Fpsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=OfL1oE8E5VUJipAihqvicf8O595es3dpUsW+47EuKCY=;
 b=ZZqCS7gZCpJuAegpm67X22RgyRUBRz2ZqMOtRmwe1yJ4d9SSRxsb3kBaD1eaPea/Dy
 hW36X7XVSpChVxAK4s+RKvefhFDa7d/EQ3z+pE6Swd9uNPs7v4kEaMOsTIeVIUQfhGW+
 jqO1Vmj/PP/jT2rq1rRbvR/jFLsHF3IeZ/zpxBkDVslJ2x/eriySiGOvYCaLNHJ+rv9w
 RouRyFC6r1E1xQ2no0UsADQgI95dfBqsvbV6YXuGGiX97uO+gmtdpiTKlxGxM6zCzUJ3
 OWE0AqYBlmbkOmvkjjLcCHkpvCCST6ym1qgZiyVjFYBv6r6Lp3aMF1iza7XDGtgis8XQ
 wFXw==
X-Gm-Message-State: AOAM530Bz+MNFIKloyQS9y9tapaZJajyJJwpXES+pvj1D6JFmDDaDZnx
 5DHfalj/4WXMyXC6crb5KUY=
X-Google-Smtp-Source: ABdhPJwoXhgkd+mJ5N9o5LUK3SSXkfhC3/uG/ZU+2A8rBS13nRZXnz4HRP9Jj6FhMYPTW7Ck/a9NqA==
X-Received: by 2002:a05:6512:3130:b0:479:2e0:631b with SMTP id
 p16-20020a056512313000b0047902e0631bmr5965447lfd.561.1654165025269; 
 Thu, 02 Jun 2022 03:17:05 -0700 (PDT)
Received: from wse-c0127 ([208.127.141.28]) by smtp.gmail.com with ESMTPSA id
 h16-20020a2e5310000000b0024f3d1dae87sm790662ljb.15.2022.06.02.03.17.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jun 2022 03:17:04 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>, Hans Schultz
 <schultz.hans@gmail.com>, Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <d88b6090-2ac8-0664-0e38-bb2860be7f6e@blackwall.org>
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
 <20220524152144.40527-2-schultz.hans+netdev@gmail.com>
 <Yo+LAj1vnjq0p36q@shredder> <86sfov2w8k.fsf@gmail.com>
 <YpCgxtJf9Qe7fTFd@shredder> <86sfoqgi5e.fsf@gmail.com>
 <YpYk4EIeH6sdRl+1@shredder> <86y1yfzap3.fsf@gmail.com>
 <d88b6090-2ac8-0664-0e38-bb2860be7f6e@blackwall.org>
Date: Thu, 02 Jun 2022 12:17:01 +0200
Message-ID: <86sfonjroi.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On tor, jun 02, 2022 at 12:33, Nikolay Aleksandrov <razor@blackwall.org> wrote:
> On 02/06/2022 12:17, Hans Schultz wrote:
>> On tis, maj 31, 2022 at 17:23, Ido Schimmel <idosch@nvidia.com> wrote:
>>> On Tue, May 31, 2022 at 11:34:21AM +0200, Hans Schultz wrote:

>> Another issue is that
>> bridge fdb add MAC dev DEV master static
>> seems to add the entry with the SELF flag set, which I don't think is
>> what we would want it to do or?
>
> I don't see such thing (hacked iproute2 to print the flags before cmd):
> $ bridge fdb add 00:11:22:33:44:55 dev vnet110 master static
> flags 0x4
>
> 0x4 = NTF_MASTER only
>

I also get 0x4 from iproute2, but I still get SELF entries when I look
with:
bridge fdb show dev DEV

>> Also the replace command is not really supported properly as it is. I
>> have made a fix for that which looks something like this:
>> 
>> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
>> index 6cbb27e3b976..f43aa204f375 100644
>> --- a/net/bridge/br_fdb.c
>> +++ b/net/bridge/br_fdb.c
>> @@ -917,6 +917,9 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
>>                 if (flags & NLM_F_EXCL)
>>                         return -EEXIST;
>>  
>> +               if (flags & NLM_F_REPLACE)
>> +                       modified = true;
>> +
>>                 if (READ_ONCE(fdb->dst) != source) {
>>                         WRITE_ONCE(fdb->dst, source);
>>                         modified = true;
>> 
>> The argument for always sending notifications to the driver in the case
>> of replace is that a replace command will refresh the entries timeout if
>> the entry is the same. Any thoughts on this?
>
> I don't think so. It always updates its "used" timer, not its "updated" timer which is the one
> for expire. A replace that doesn't actually change anything on the entry shouldn't generate
> a notification.

Okay, so then there is missing checks on flags as the issue arose from
replacing locked entries with dynamic entries. I will do another fix
based on flags as modified needs to be true for the driver to get notified.
