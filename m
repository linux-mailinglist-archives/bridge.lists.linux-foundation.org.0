Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F6C36C095
	for <lists.bridge@lfdr.de>; Tue, 27 Apr 2021 10:08:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2FCD660B11;
	Tue, 27 Apr 2021 08:08:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Eefww3DolRpY; Tue, 27 Apr 2021 08:08:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTP id 344AE60B00;
	Tue, 27 Apr 2021 08:08:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 501B4C0024;
	Tue, 27 Apr 2021 08:08:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6130CC000B
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 15:18:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 42BC9402AF
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 15:18:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id subiLbxfdaph for <bridge@lists.linux-foundation.org>;
 Mon, 26 Apr 2021 15:17:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com
 [IPv6:2607:f8b0:4864:20::633])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9A02F40296
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 15:17:59 +0000 (UTC)
Received: by mail-pl1-x633.google.com with SMTP id h20so29110523plr.4
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 08:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=dqh4dH8aZ6HN+B6a/NbTwQiRYC2u5Akv4+7vt6N7BqI=;
 b=XY9Yv9AWPcZwWKle2oLxy6MXxZYJ/wI3gWfHvn1lwE0JJXaahPaKvpQZfVqimJVczU
 6cKT0NyHZMxVxRYb1j2gl3iw6Tk0aJJSghG2us6p4q5uzGj/Bi7mgOvUX+hqf3MhzQg+
 gTBcuWVt1SUt7oWg50ZtZ1OR0L2iUpJEBqTZ12/nkPhOna7owJ3beyuLuIs3y6kI1/0z
 +V/a4ZdA7XHpDRqjZ4u5iYt6ECEjJ3wudJb3xa4WXtVz2JMzaaRgGQ4XBw4aHI86j7pH
 D+LyTlb4q5HRHj7KWC+tPmNrO2NaYpKzJ1YP7lWKjUMaesuaq1PzEn1tPnB5qQMKro/f
 FqHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dqh4dH8aZ6HN+B6a/NbTwQiRYC2u5Akv4+7vt6N7BqI=;
 b=jWKBqr+ddX8dSAPH24vE1OFmtlIx+yZhewbqVzIjGRn2FZspTyVVH/Ia4wqmi4fKeF
 u35n5ScUyK7BqEwqY8ASy/+JhZ6JC4fI49WptWVXrKnalaoLMjYWpLQwUU01yj0U00RS
 JOsS9Yp4DmPpSbOdnacd+lPlYdffA0Ai5QnMHSVHwZzSLxUy2LcsEnSXFrBf9kwfN5/Z
 ZErdig9eIkxmOpWCWoyqnepSCMJ+3ub7lPQCeenXGaNouSycfyCI40wrnkc3sCVzY/Gr
 7+wnMa4fQ8U5KWvxDHsvWmZV6c0OySGM7F6cj7R0o4sCsHJ6C6tvR6YWbDRdGo47Dyyv
 w5qg==
X-Gm-Message-State: AOAM533/c8quhSZuehF5VY21XyZmJYJSosl7xmFU2FHR4KWpRTPtmibS
 D8N/Ns8A+lcmjsfybx837Mu4oWqlTQ4=
X-Google-Smtp-Source: ABdhPJzjB2/a2k1EK1OBw6sXE24xe/04DWLan0d03jv+ZZbEaiLUlLmytXqmukKx0eOwj7yzsb+Olw==
X-Received: by 2002:a17:90a:cb0e:: with SMTP id
 z14mr3371246pjt.128.1619450278670; 
 Mon, 26 Apr 2021 08:17:58 -0700 (PDT)
Received: from [192.168.0.4] ([49.173.165.50])
 by smtp.gmail.com with ESMTPSA id a190sm90776pfb.185.2021.04.26.08.17.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 26 Apr 2021 08:17:58 -0700 (PDT)
To: Nikolay Aleksandrov <nikolay@nvidia.com>,
 Herbert Xu <herbert@gondor.apana.org.au>
References: <20210425155742.30057-1-ap420073@gmail.com>
 <20210425155742.30057-3-ap420073@gmail.com>
 <ed54816f-2591-d8a7-61d8-63b7f49852c1@nvidia.com>
 <20210426124806.4zqhtn4wewair4ua@gondor.apana.org.au>
 <1e8cda49-4bc3-6f0b-29f3-97848aab18f0@nvidia.com>
From: Taehee Yoo <ap420073@gmail.com>
Message-ID: <68b18d15-d472-3305-4f91-5e61f8b60488@gmail.com>
Date: Tue, 27 Apr 2021 00:17:52 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1e8cda49-4bc3-6f0b-29f3-97848aab18f0@nvidia.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 27 Apr 2021 08:08:26 +0000
Cc: bridge@lists.linux-foundation.org, cong.wang@bytedance.com,
 daniel@iogearbox.net, yoshfuji@linux-ipv6.org, j.vosburgh@gmail.com,
 dsahern@kernel.org, roopa@nvidia.com, ast@kernel.org, bjorn@kernel.org,
 vfalico@gmail.com, netdev@vger.kernel.org, kuba@kernel.org, weiwan@google.com,
 andriin@fb.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net 2/2] net: bridge: fix lockdep
 multicast_lock false positive splat
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

On 4/26/21 10:15 PM, Nikolay Aleksandrov wrote:
 > On 26/04/2021 15:48, Herbert Xu wrote:

Hi Nikolay and Herbert,
Thank you for the reviews!

 >> On Sun, Apr 25, 2021 at 07:45:27PM +0300, Nikolay Aleksandrov wrote:
 >>>
 >>> Ugh.. that's just very ugly. :) The setup you've described above is 
by all means invalid, but
 >>> possible unfortunately. The bridge already checks if it's being 
added as a port to another
 >>> bridge, but not through multiple levels of indirection. These locks 
are completely unrelated
 >>> as they're in very different contexts (different devices).
 >>
 >> Surely we should forbid this? Otherwise what's to stop someone
 >> from creating a loop?
 >>
 >> Cheers,
 >>
 >
 > Indeed that would be best, it's very easy to loop them.
 >

We can make very various interface graphs with master/slave interface types.
So, if we need something to forbid it, I think it should be generic 
code, not only for the bridge module.
