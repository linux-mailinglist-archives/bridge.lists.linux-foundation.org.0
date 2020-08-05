Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D80823CC4B
	for <lists.bridge@lfdr.de>; Wed,  5 Aug 2020 18:37:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0E5F92271C;
	Wed,  5 Aug 2020 16:37:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y34vmjwlcu9Q; Wed,  5 Aug 2020 16:37:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 472C922720;
	Wed,  5 Aug 2020 16:37:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 277EDC088E;
	Wed,  5 Aug 2020 16:37:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5C2A4C004C
 for <bridge@lists.linux-foundation.org>; Wed,  5 Aug 2020 16:37:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 449D38738B
 for <bridge@lists.linux-foundation.org>; Wed,  5 Aug 2020 16:37:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MMlsbqCC-mXc for <bridge@lists.linux-foundation.org>;
 Wed,  5 Aug 2020 16:37:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8792D8731E
 for <bridge@lists.linux-foundation.org>; Wed,  5 Aug 2020 16:37:03 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id h7so42223617qkk.7
 for <bridge@lists.linux-foundation.org>; Wed, 05 Aug 2020 09:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=g8oBzmcJiwGUXDvGcXm/0jru3TFpb5KAGIgwrDHVYC8=;
 b=KBWDn9ItSVNc/Jo8C2TLo2d2SEBDpW+HtxikoK/wOOY/mZh9tUYIYjj/uswXH6qy5w
 8nYeqNNVOoQZQyqnWEKsi6y1jLlwl6N8V4Kk5dMr8lGik9Yev4DbnpaYOqRuJg+Logxv
 eaVWwobIifXbVWAI0sxtrwc0CLJRsswu3/ZdeeZ04bD1FMXgqtG4ALd4f7WEJY+0bsa8
 1GqfxQyatbsNL0hjud1ZZlRCIe59Jtnkn2Eccfbgyg4G4pWNS0OWG8BKfy+PGbWSbHz4
 J+Wd0i+hyS9MDfNNFUc+u1u8EtIllN2jVoU8Ap1Qgl43YSFTBJzs3DVrJzbbyfFpgs8N
 H9Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=g8oBzmcJiwGUXDvGcXm/0jru3TFpb5KAGIgwrDHVYC8=;
 b=pY03U7wStJNpKMDrla3+glzi52qFXeJ1ex/S+JnKrQqYGuxKjam5ZbFKodYyKDLgXT
 cI5n/le99cT2IATYQkX7NAiFv43x9Z+qnWjCRv8wC3C8Ju+z6WNYjpKHMGcfB6F5HPld
 9ArvS5m0hyzJBULcZ0eeDsqU27IYFuRik2cIKTlBl4zKr3DUudfWkN0uWkR9J+HWcLuE
 Xn9kqiXx1uBywlZ6wvIZDKLZoHcugia4SN9W+BB7yggpO0HubLZTCDN4nK9i6gzcq0TW
 U4emnXxOlWraZWwCDruF8NPIS9eWvf7b8Ia0ssj9fiyDlXv4s6QckhUkPeC+XJ2OUp1y
 DcUg==
X-Gm-Message-State: AOAM532yIeOUXhaxmq4o8+uYAHh4Kd+ZBSY5/rjaDtSOxgiUyh9RmF8a
 6f25IKVx9tKJ/WB12kuv8+M=
X-Google-Smtp-Source: ABdhPJyWF6j527vZYqsLimWvbwOHtw6EfuxOOrLaZwDoO0Xy2t721e+FtIEEjwxmg8MVztY6/8nodQ==
X-Received: by 2002:a37:90e:: with SMTP id 14mr4299966qkj.102.1596645422525;
 Wed, 05 Aug 2020 09:37:02 -0700 (PDT)
Received: from [10.254.6.29] ([162.243.188.133])
 by smtp.googlemail.com with ESMTPSA id h24sm1971156qkk.72.2020.08.05.09.36.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 05 Aug 2020 09:37:01 -0700 (PDT)
To: Yoshiki Komachi <komachi.yoshiki@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>
References: <1596170660-5582-1-git-send-email-komachi.yoshiki@gmail.com>
 <5f2492aedba05_54fa2b1d9fe285b42d@john-XPS-13-9370.notmuch>
 <E2A7CC68-9235-4E97-9532-66D61A6B8965@gmail.com>
From: David Ahern <dsahern@gmail.com>
Message-ID: <8eda2f23-f526-bd56-b6ac-0d7ae82444b5@gmail.com>
Date: Wed, 5 Aug 2020 10:36:58 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <E2A7CC68-9235-4E97-9532-66D61A6B8965@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Cc: Song Liu <songliubraving@fb.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 Alexei Starovoitov <ast@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 David Ahern <dsahern@kernel.org>, Yonghong Song <yhs@fb.com>,
 KP Singh <kpsingh@chromium.org>, Jakub Kicinski <kuba@kernel.org>,
 bpf@vger.kernel.org, Andrii Nakryiko <andriin@fb.com>,
 Martin KaFai Lau <kafai@fb.com>
Subject: Re: [Bridge] [RFC PATCH bpf-next 0/3] Add a new bpf helper for FDB
	lookup
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

On 8/5/20 4:26 AM, Yoshiki Komachi wrote:
>>
>> Just to clarify for myself. I expect that with just the helpers here
>> we should only expect static configurations to work, e.g. any learning
>> and/or aging is not likely to work if we do redirects in the XDP path.
> 
> As you described above, learning and aging don’t work at this point. 
> 
> IMO, another helper for learning will be required to fill the requirements.
> I guess that the helper will enable us to use the aging feature as well
> because the aging is the functionality of bridge fdb.

One option is to have a flag that bumps the ageing on successful lookup
and do that in 1 call. You will already have access to the fdb entry.


