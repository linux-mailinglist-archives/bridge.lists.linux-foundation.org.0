Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0B04DC93C
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 15:50:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 368C760A90;
	Thu, 17 Mar 2022 14:50:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W727wPgViSqD; Thu, 17 Mar 2022 14:50:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id CBBE560A97;
	Thu, 17 Mar 2022 14:50:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5DE3BC0082;
	Thu, 17 Mar 2022 14:50:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6C7C6C000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 14:50:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 552F884796
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 14:50:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WA7at5e919dJ for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 14:50:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com
 [IPv6:2a00:1450:4864:20::234])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 711AD8434D
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 14:50:32 +0000 (UTC)
Received: by mail-lj1-x234.google.com with SMTP id q5so7497813ljb.11
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 07:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=a1deU4EzeQc2joaO/0pAzd9yMJPMyBOx4cFep+UZqpU=;
 b=grrSiCZnED0iRJVv3x8DdKEd2SBdCYYEKvx78/W0bwwg6lNgPAwknPtj4c6HaqI+EB
 VZs4aVLKZIGpaopOl4oa9mXcGDZjPzf1yTo5p0EmoAYBo/s3qCpBLinPtdu3E6eGqBMb
 BeMNwzdrmDCinI9oocmQ5z5nhtlFXBeyLEDAN8X9j3/B9X7tOU2M4rO8llre/dB5Sq+1
 KlypWQFtEU1f3jxAFhUeICPh+WHp4WY2F4N17BPjz4AFxSx392cLPRuBgS1/6ir8D+5q
 pacdrxhFJUnthnPVsdra+8yLjOibVEBRoaxMPkokjOHAwNvP5aQuAOqkdbQulW94i2rb
 JeAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=a1deU4EzeQc2joaO/0pAzd9yMJPMyBOx4cFep+UZqpU=;
 b=l5tKqX/H3TWuBqc0mEKQcCh1R8wyPNdAmoJSYtRf+SYEpcStYlYxQjq3nzZWRl6R3i
 BaE+1QVpQjclzypPzdz0A88h5djOvScdTBZfEGpiBNDDbSZh2Rh6ugxqerEFxRGTSAU4
 pagZ1AlWz2GkPv+T8Sps5rGZQ2ubrCAAHUDezGDJjegctUcjt7YIwCOvYNSjkoF4agqF
 TDwk5KAL2nar5J+nEwPCVFhT0E/IDf5j3twMf4NfffItuicFH7/6gQZq88pSS3Nh7Sp2
 ma/abd1YH5eFLBnZONFh+wAzowC8J+UNDwfPD7oHJYjNjvcleEmES4wqZbSFjO+C6WSX
 Z4rA==
X-Gm-Message-State: AOAM530k5QMmeoUnj5wys3tjcZAN6vIjlpGH69s5DaASUkBN/hxkmZbr
 MXT8TrfGclqTXDHSDFtJqe0=
X-Google-Smtp-Source: ABdhPJwNNENC86ntj9Bj44eTnnIs1ropK1IquslMLjtqZZuQXlzZ7Lk2v+RfqJm9d5uJs6CT7C21DA==
X-Received: by 2002:a2e:9d43:0:b0:249:4022:dd32 with SMTP id
 y3-20020a2e9d43000000b002494022dd32mr3101119ljj.235.1647528630053; 
 Thu, 17 Mar 2022 07:50:30 -0700 (PDT)
Received: from wse-c0127 ([208.127.141.29]) by smtp.gmail.com with ESMTPSA id
 k5-20020a2e2405000000b0024801a68041sm449691ljk.128.2022.03.17.07.50.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Mar 2022 07:50:29 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Ido Schimmel <idosch@idosch.org>, Hans Schultz <schultz.hans@gmail.com>,
 razor@blackwall.org
In-Reply-To: <YjM7Iwx4MDdGEHFA@shredder>
References: <20220317093902.1305816-1-schultz.hans+netdev@gmail.com>
 <20220317093902.1305816-2-schultz.hans+netdev@gmail.com>
 <YjM7Iwx4MDdGEHFA@shredder>
Date: Thu, 17 Mar 2022 15:50:26 +0100
Message-ID: <86ilsciqfh.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Vladimir Oltean <olteanv@gmail.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 1/4] net: bridge: add fdb flag to
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

On tor, mar 17, 2022 at 15:44, Ido Schimmel <idosch@idosch.org> wrote:
> On Thu, Mar 17, 2022 at 10:38:59AM +0100, Hans Schultz wrote:
>> Add an intermediate state for clients behind a locked port to allow for
>> possible opening of the port for said clients. This feature corresponds
>> to the Mac-Auth and MAC Authentication Bypass (MAB) named features. The
>> latter defined by Cisco.
>> Only the kernel can set this FDB entry flag, while userspace can read
>> the flag and remove it by deleting the FDB entry.
>
> Can you explain where this flag is rejected by the kernel?
>
Is it an effort to set the flag from iproute2 on adding a fdb entry?

> Nik, it seems the bridge ignores 'NDA_FLAGS_EXT', but I think that for
> new flags we should do a better job and reject unsupported
> configurations. WDYT?
>
> The neighbour code will correctly reject the new flag due to
> 'NTF_EXT_MASK'.
